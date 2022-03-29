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

var FM = FileManager.default

var argc = CommandLine.argc
var argv = CommandLine.arguments.count

let pname = "mkdir"

// Make a directory
func makeDir(path: String) {
    do {
        try FM.createDirectory(atPath: path, withIntermediateDirectories: false, attributes: nil)
    } catch {
        print("\(pname): \(error)")
    }
}

// Make a directory and all intermediate directories
func makeDirAll(path: String) {
    do {
        try FM.createDirectory(atPath: path, withIntermediateDirectories: true, attributes: nil)
    } catch {
        print("\(pname): \(error)")
    }
}