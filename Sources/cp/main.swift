/*
 *  cp.swift - copy a file.
 *
 *  Part of neueCoreutils.
 *
 *  This software is freely distributable under the MIT License.
 *  Check <LICENSE> for more information.
 * 
 */

import Foundation

var FM = FileManager.default

var argc = CommandLine.argc
var argv = CommandLine.arguments

let pname = "cp"

func copyFile(from: String, to: String) {
    do {
        try FM.copyItem(atPath: from, toPath: to)
    } catch {
        print("\(pname): \(error)")
    }
}

if argc == 1 {
    print("\(pname): no file specified")
    exit(1)
}

if argc == 2 {
    print("\(pname): missing destination file operand after '\(argv[1])'")
    exit(1)
}

if argc == 3 {
    copyFile(from: argv[1], to: argv[2])
}