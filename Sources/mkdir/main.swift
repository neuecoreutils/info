/*
 *  mkdir.swift - Make a directory.
 *
 *  Part of neueCoreutils.
 *
 *  This software is freely distributable under the MIT License.
 *  Check <LICENSE> for more information.
 * 
 */

import Foundation

var pname = "mkdir"

if CommandLine.argc == 1 {
    print("\(pname): missing operand")
    exit(1)
}

var FM = FileManager.default
var argc = CommandLine.argc
var argv = CommandLine.arguments
let verboseMode = 0


if argc > 1 && argv[1].hasPrefix("-") == true &&
               argv[1].contains("v") == true {
    let verboseMode = 1
}

if argc > 1 && argv[1].hasPrefix("-") == true &&
               argv[1].contains("p") == true {
    let dPath = CommandLine.arguments[2]
    do {
        try FM.createDirectory(atPath: dPath, 
                               withIntermediateDirectories: true, 
                               attributes: nil)
        if verboseMode == 1 {
            print("\(pname): created directory \(dPath).")
        }
    } 
    catch {
        print(error)
    }
}

