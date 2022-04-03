/*
 *  Copyright (C) 2022 WDXP.
 * 
 *  ln.swift - Link a file or a directory.
 *
 *  Part of neueCoreutils.
 *
 *  This software is freely distributable under the MIT License.
 *  Check <LICENSE> for more information.
 * 
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

