/*
 *  mv.swift - move a file.
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

let pname = "mv"

// Move a file
func moveFile(from: String, to: String) {
    do {
        try FM.moveItem(atPath: from, toPath: to)
    } catch {
        print("\(pname): \(error)")
    }
}
