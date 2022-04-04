/*
 *  Copyright (C) 2022 WDXP.
 *  SPDX-License-Identifier: MIT
 *
 *  Part of the neueCoreutils Project.
 */

import Foundation
var argc = CommandLine.arguments.count
var argv = CommandLine.arguments
let pname = "whoami"

let fullname = NSFullUserName()
let username = NSUserName()

if argc == 1 {
    print("\(username)")
    exit(0)
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
    Print the username associated with the current effective user.

        -f   --fullname           print the full name of the user
             --help               display this message and exit
             --version            display version information and exit
    """)
    }


else if argc > 1 && argv[1] == "-f" || argv[1] == "--fullname"{
    print("\(fullname)")
    exit(0)
}
else {
    print("""
    \(pname): invalid option: '\(argv[1])'
    Try 'whoami --help' for more information.
    """)
}