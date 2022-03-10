/* 
 *  uname.swift - print system information
 *
 */

import Foundation

#if os(macOS) || os(iOS)
import Darwin
#elseif os(Linux)
import Glibc
#endif

var argv = CommandLine.arguments
var argc = CommandLine.argc
var systemInfo = utsname()
uname(&systemInfo)
let username = NSUserName() 
let homedir = NSHomeDirectory()
let OSName = ProcessInfo.processInfo.operatingSystemVersionString
let hname = ProcessInfo.processInfo.hostName
let osver = ProcessInfo.processInfo.operatingSystemVersion

print("\(username)@\(hname)")
print("----------------------")
print("OS: \(OSName)")
print("\(homedir)")
print("\(username)")
