import Foundation

let arguments = CommandLine.arguments

if arguments.count != 2 {
    print("Usage: silly-calc <expression>")
    print("Example: silly-calc 123+456=")
    exit(1)
}

let expression = arguments[1]
print("Got expression: \(expression)")
