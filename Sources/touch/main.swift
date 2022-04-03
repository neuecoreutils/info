/*
 *  touch.swift - change file timestamps
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

let pname = "touch"

// Make a file
func touch(path: String) {
    do {
        try FM.createFile(atPath: path, contents: nil, attributes: nil)
    } catch {
        print("\(pname): cannot create '\(path)': \(error)")
    }
}
