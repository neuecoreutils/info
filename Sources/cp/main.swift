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
    let toDir: String = "\(argv[2])/\(argv[1])"
    copyFile(from: argv[1], to: toDir)
}