# silly-calc

A small, impractical demo Swift application that uses macOS accessibility APIs to programmatically operate the built-in Calculator.app.

## What It Does

This app automates Calculator.app by sending it keystrokes for mathematical expressions. Instead of doing the math itself, it hijacks macOS Calculator and makes it do the work.

Example usage:
```bash
swift run silly-calc 123+456=
```

This will open Calculator.app and programmatically type "123+456=" to get the result.

## Project Structure

- `Package.swift` - Swift package configuration
- `Sources/main.swift` - Main application entry point

## Building and Running

Build the project:
```bash
swift build
```

Run the application:
```bash
swift run silly-calc [expression]
```

## Dependencies

- **AXSwift** - A Swift wrapper around macOS accessibility APIs for programmatically controlling GUI applications

## About This Project

This is an intentionally impractical demonstration of macOS accessibility features. It's designed to be legible to folks unfamiliar with Swift, accessibility APIs, or macOS automation. The focus is on clarity and simplicity rather than production-quality code patterns.

The app showcases how to:
- Use Swift Package Manager for executable projects  
- Interact with macOS accessibility APIs through AXSwift
- Programmatically control native macOS applications