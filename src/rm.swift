/*
 *  rm.swift - Remove a file or a directory.
 *
 *  Part of neueCoreutils.
 *
 *  This software is freely distributable under the MIT License.
 *  Check <LICENSE> for more information.
 * 
 */

// Importing Foundation
import Foundation

// Setting up FileManager 
var FM = FileManager.default
var progName = CommandLine.arguments[0]

// If there are no arguments given, exit immediately
if CommandLine.argc == 1 {
    print("\(progName): missing operand")
    exit(1)
}

// Command line argument for taking directory path

if CommandLine.argc > 1 && CommandLine.arguments[1] == "-f" {
    var dPath = CommandLine.arguments[2]
}
else {
    var dPath = CommandLine.arguments[1]
}

// Check if said file is deletable

if FM.isDeletableFile(atPath: dPath) == true && CommandLine.arguments[1] == "-f" {
    // If it is, delete it
    do {
        try FM.removeItem(atPath: dPath)
    } catch {
        // If there's an error whilst removing the file, report it
        print(error)
    }
}
else {
    // otherwise, print that the user has no permission to delete this file.
    print("\(progName): permission denied")
}