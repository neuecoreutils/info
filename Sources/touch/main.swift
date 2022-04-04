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

let pname = "touch"

// Make a file
func touch(path: String) {
    do {
        try FM.createFile(atPath: path, contents: nil, attributes: nil)
    } catch {
        print("\(pname): cannot create '\(path)': \(error)")
    }
}
