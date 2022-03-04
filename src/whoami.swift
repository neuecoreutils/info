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

let fullname = NSFullUserName()
let username = NSUserName()

if CommandLine.argc == 1 {
    print("\(username)")
    exit(0)
}

for arg in CommandLine.arguments {
    if (arg == "-f") {
        print("\(fullname)")
        exit(0)
    }
}
