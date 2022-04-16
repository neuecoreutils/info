/*
 *  Copyright (C) 2022 WDXP.
 *  SPDX-License-Identifier: MIT
 *
 *  Part of the neueCoreutils Project.
 */

import Foundation

var FM = FileManager.default

var argc = CommandLine.arguments.count
var argv = CommandLine.arguments

let pname = "rm"

// remove a file
func rm(path: String) {
    do {
        try FM.removeItem(atPath: path)
    } catch {
        print("rm: cannot remove '\(path)': \(error)")
    }
}

if argc > 1 && argv[1] == ("--version") {
    print("""
    \(pname) (neueCoreutils) 0.2a
    Copyright (C) 2022 WDXP.

    Licensed under MIT.
    """)
    }

else if argc > 1 && argv[1] == ("--help") {
    print("""
    Usage: \(pname) <OPTION>...
    \(desc)

             --help               display this message and exit
             --version            display version information and exit
    """)
    }


else if argc == 1 {
    touch(path: argv[1])
}

else {
    print("""
    \(pname): invalid option: '\(argv[1])'
    Try '\(pname) --help' for more information.
    """)
}
