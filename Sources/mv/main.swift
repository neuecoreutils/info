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
let pname = "mv"

// Move a file
func moveFile(from: String, to: String) {
    do {
        try FM.moveItem(atPath: from, toPath: to)
    } catch {
        print("\(pname): \(error)")
    }
}
