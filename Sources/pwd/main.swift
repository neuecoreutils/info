import Foundation

var cwd = FileManager.default.currentDirectoryPath

var argc = CommandLine.argc
var argv = CommandLine.arguments

if argc == 1 {
    print(cwd)
}