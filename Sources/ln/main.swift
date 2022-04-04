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

let pname = "ln"

// Make a hard link
func hardLink(from: String, to: String) -> Bool {
    do {
        try FM.linkItem(atPath: from, toPath: to)
        return true
    } catch {
        return false
    }
}

// Make a symbolic link
func symbolicLink(from: String, to: String) -> Bool {
    do {
        try FM.createSymbolicLink(atPath: to, withDestinationPath: from)
        return true
    } catch {
        return false
    }
}

if argc == 1 {
    print("\(pname): missing file operand")
    exit(1)
}

if argc == 2 {
    print("\(pname): coreutils.err.ArgcEqualsToTwo") // sorry, will finish later :p
    exit(1)
}

if argc == 3 {
    hardLink(from: argv[1], to: argv[2])
}

if argc == 4 && argv[1] == "-s" {
    symbolicLink(from: argv[2], to: argv[3])
}