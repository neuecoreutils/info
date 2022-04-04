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