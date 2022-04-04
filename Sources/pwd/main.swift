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

let pname = "pwd"

// print current working directory
func printCurrentWorkingDirectory() {
    do {
        let path = try FM.currentDirectoryPath
        print(path)
    } catch {
        print("\(pname): \(error)")
    }
}

// print the target directory of a symbolic link
func printTargetDirectory(of: String) {
    do {
        let path = try FM.destinationOfSymbolicLink(atPath: of)
        print(path)
    } catch {
        print("\(pname): \(error)")
    }
}