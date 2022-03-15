/* 
 *  uname.swift - print system information
 *
 */

import Foundation

var argv = CommandLine.arguments
var argc = CommandLine.argc
var sysinfo = utsname()
uname(&sysinfo)

if uname(&sysinfo) < 0 {
    print("uname: Error: Cannot stat system info.")
    exit(1)
}

let mach = withUnsafePointer(to: &sysinfo.machine) {
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

if argc > 1 && argv[1] == "-s" {
    print(sysname!)
}
else if argc > 1 && argv[1] == "-n" {
    print(hostname!)
}
else if argc > 1 && argv[1] == "-r" {
    print(release!)
}
else if argc > 1 && argv[1] == "-v" {
    print(ver!)
}
else if argc > 1 && argv[1] == "-m" {
    print(mach!)
}
else if argc > 1 && argv[1] == "--version" {
    print("uname (neueCoreutils) 0.2a")
    print("Copyright (C) 2022 WDXP.\n")
    print("Licensed under the MIT License.")
    
}
else {
    print(sysname!)
}