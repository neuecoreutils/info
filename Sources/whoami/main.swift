/*
 *  whoami.swift - print username
 *
 *  Part of neueCoreutils.
 *
 *  This software is freely distributable under the MIT License.
 *  Check <LICENSE> for more information.
 * 
 */

import Foundation
var argc = CommandLine.argc
var argv = CommandLine.arguments.count
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