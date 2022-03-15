/* 
 *  uname.swift - print system information
 *
 */

import Foundation

var argv = CommandLine.arguments
var argc = CommandLine.argc

let OSName = ProcessInfo.processInfo.operatingSystemVersionString

print(":::Legacy:::")
print(OSName)

var sysinfo = utsname()
uname(&sysinfo)

if uname(&sysinfo) < 0 {
    print("uname: Error: Cannot stat.")
    exit(1)
}

print(":::Modern:::")

let modelCode = withUnsafePointer(to: &sysinfo.machine) {
    $0.withMemoryRebound(to: CChar.self, capacity: 1) {
        ptr in String.init(validatingUTF8: ptr)
    }
}

let sysname = withUnsafePointer(to: &sysinfo.sysname) {
    $0.withMemoryRebound(to: CChar.self, capacity: 1) {
        ptr in String.init(validatingUTF8: ptr)
    }
}
let release = withUnsafePointer(to: &sysinfo.release) {
    $0.withMemoryRebound(to: CChar.self, capacity: 1) {
        ptr in String.init(validatingUTF8: ptr)
    }
}
let version = withUnsafePointer(to: &sysinfo.version) {
    $0.withMemoryRebound(to: CChar.self, capacity: 1) {
        ptr in String.init(validatingUTF8: ptr)
    }
}
let hostname = withUnsafePointer(to: &sysinfo.nodename) {
    $0.withMemoryRebound(to: CChar.self, capacity: 1) {
        ptr in String.init(validatingUTF8: ptr)
    }
}

print(modelCode!)
print(release!)
print(sysname!)
print(version!)
print(hostname!)
