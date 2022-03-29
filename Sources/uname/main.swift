/* 
 *  uname.swift - print system information
 *
 *  Part of neueCoreutils.
 *
 *  This software is freely distributable under the MIT License.
 *  Check <LICENSE> for more information.
 */

import Foundation
var argc = CommandLine.argc
var argv = CommandLine.arguments.count
let pname = "uname"

var sysinfo = utsname()

uname(&sysinfo)

/*
 *  uname uses the actual utsname functions to get all the system
 *  information.
 *  =============================================================
 */
let machine = withUnsafePointer(to: &sysinfo.machine) {
    $0.withMemoryRebound(to: CChar.self, capacity: 1) {
        ptr in String.init(validatingUTF8: ptr)
    }
}
let kernnme = withUnsafePointer(to: &sysinfo.sysname) {
    $0.withMemoryRebound(to: CChar.self, capacity: 1) {
        ptr in String.init(validatingUTF8: ptr)
    }
}
let kernrls = withUnsafePointer(to: &sysinfo.release) {
    $0.withMemoryRebound(to: CChar.self, capacity: 1) {
        ptr in String.init(validatingUTF8: ptr)
    }
}
let kernver = withUnsafePointer(to: &sysinfo.version) {
    $0.withMemoryRebound(to: CChar.self, capacity: 1) {
        ptr in String.init(validatingUTF8: ptr)
    }
}
let hstname = withUnsafePointer(to: &sysinfo.nodename) {
    $0.withMemoryRebound(to: CChar.self, capacity: 1) {
        ptr in String.init(validatingUTF8: ptr)
    }
}

let dstronme = ProcessInfo.processInfo.operatingSystemVersionString

/*
 *  Commandline functions 
 */

 if argc == 1 {
    print(kernnme!)
    exit(0)
}

if argc > 1 && argv[1].hasPrefix("--") &&
   argv[1].contains("version") == true {
    print("""
    \(pname) (neueCoreutils) 0.2a
    Copyright (C) 2022 WDXP.

    Licensed under MIT.
    """)
    }

if argc > 1 && argv[1].hasPrefix("--") && 
        argv[1].contains("help") == true {
    print("""
    Usage: uname <OPTION>...
    Print system information. If ran without any option, same as '-s'.

        -a   -all                    print all information.

        -s   --kernel-name           print the kernel name
        -n   --nodename              print the network node hostname
        -r   --kernel-release        print the kernel release
        -v   --kernel-version        print the machine hardware name
        -m   --machine               print the machine hardware name
        -d   --distro                print the name of the distribution
             
             --help                  display this help and exit
             --version               display version information and exit
    """)
    }

if argc > 1 && argv[1].hasPrefix("-") == true && 
        argv[1].contains("s") == true {
    print("\(kernnme!)")
    }

if argc > 1 && argv[1].hasPrefix("-") == true && 
        argv[1].contains("n") == true {
    print("\(hstname!)")
    }

if argc > 1 && argv[1].hasPrefix("-") == true && 
        argv[1].contains("r") == true {
    print("\(kernrls!)")
    }

if argc > 1 && argv[1].hasPrefix("-") == true &&
        argv[1].contains("v") == true {
    print("\(kernver!)")
    }

if argc > 1 && argv[1].hasPrefix("-") == true && 
        argv[1].contains("m") == true {
    print("\(machine!)")
    }

if argc > 1 && argv[1].hasPrefix("-") == true && 
        argv[1].contains("d") == true {
    print("\(dstronme)")
}

if argc > 1 && argv[1].hasPrefix("-") == true && 
        argv[1].contains("af") == true {
    print("""
    Kernel Name:     \(kernnme!) 
    Nodename:        \(hstname!) 
    Kernel Release:  \(kernrls!) 
    Kernel Version:  \(kernver!)
    Hardware Name:   \(machine!) 
    OS Name:         \(dstronme)
    """)
}

if argc > 1 && argv[1].hasPrefix("-") == true && 
        argv[1].hasSuffix("a") == true {
    print("\(kernnme!) \(hstname!) \(kernrls!) \(kernver!) \(machine!) \(dstronme)")
}


if argc > 1 && argv[1].isEmpty == true {
    print("\(kernnme!)")
    }

if argc > 1 && argv[1].hasPrefix("-") == false {
    print("\(pname): extra operand `\(argv[1].dropFirst())`")
    print("Try '\(pname) --help' for more information.")
    exit(1)
    }

if argc > 1 && argv[1].hasPrefix("-") == true && argv[1].contains("s") == false &&
        argv[1].contains("n") == false &&
        argv[1].contains("r") == false &&
        argv[1].contains("v") == false &&
        argv[1].contains("m") == false &&
        argv[1].contains("a") == false &&
        argv[1].contains("d") == false {
    print("\(pname): unrecognized operand `\(argv[1])`")
    print("Try '\(pname) --help' for more information.")
    exit(1)
}
