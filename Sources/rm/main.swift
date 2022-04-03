/*
 *  rm.swift - Remove a file or a directory.
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

let pname = "rm"

// remove a file
func rm(path: String) {
    do {
        try FM.removeItem(atPath: path)
    } catch {
        print("rm: cannot remove '\(path)': \(error)")
    }
}