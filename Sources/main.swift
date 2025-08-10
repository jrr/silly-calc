import AppKit

let arguments = CommandLine.arguments

if arguments.count != 2 {
    print("Usage: silly-calc <expression>")
    print("Example: silly-calc 123+456=")
    exit(1)
}

let expression = arguments[1]
print("Got expression: \(expression)")

let app = getCalculatorApp()

print(
    "\n🎯 Found Calculator! PID: \(app.processIdentifier)")

// ==============================================================

func getCalculatorApp() -> NSRunningApplication {
    func findCalculator() -> NSRunningApplication? {
        NSWorkspace.shared.runningApplications
            .first { app in app.bundleIdentifier == "com.apple.calculator" }
    }

    // First, try to find Calculator if it's already running
    if let existingApp = findCalculator() {
        return existingApp
    }

    // If not running, launch Calculator using system command
    let task = Process()
    task.launchPath = "/usr/bin/open"
    task.arguments = ["-a", "Calculator"]
    task.launch()
    task.waitUntilExit()  // Wait for the launch command to complete

    // Wait for the app to start and become available
    for _ in 1...25 {
        Thread.sleep(forTimeInterval: 0.3)

        if let launchedApp = findCalculator() {
            return launchedApp
        }
    }

    fatalError("❌ Calculator launched but couldn't find the running process")
}
