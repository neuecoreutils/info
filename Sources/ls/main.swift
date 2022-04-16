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

let pname = "ls"

// check if something is a directory
func isDirectory(path: String) -> Bool {
    var isDir: ObjCBool = false
    if FM.fileExists(atPath: path, isDirectory: &isDir) {
        return isDir.boolValue
    }
    return false
}

// list all contents of a directory
func listDirectory(path: String) {
    do {
        let contents = try FM.contentsOfDirectory(atPath: path)
        for item in contents {
            if isDirectory(path: "\(path)/\(item)") {
                print("\(item)/")
            } else {
                print(item)
            }
        }
    } catch {
        print("\(pname): \(error)")
    }
}