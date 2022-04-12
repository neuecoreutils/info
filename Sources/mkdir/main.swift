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

// handle command line arguments
if argc < 2 {
    print("\(pname): missing operand")
    print("Try '\(pname) --help' for more information.")
    exit(1)
}

// Print help!

    if argv[1] == "--help" {
        print("Usage: \(pname) [OPTION]... DIRECTORY...\n")
        print("Create the DIRECTORY(ies), if they do not already exist.\n")
        print("     -p, --parents   no error if existing, make parent directories as needed\n")  
        print("With no arguments, create a directory in the current directory.\n")
        print("Report mkdir bugs to 'https://ngux.github.io/neuecoreutils/issues'.")
        print("Part of neueCoreutils. Check it out at 'https://ngux.github.io/neuecoreutils'.")
        exit(0) 
    }

    if argv[1] == "-p" {
        do { makeDirAll(path: argv[2]) } catch { print(error) } 
    }

    makeDir(path: argv[1])