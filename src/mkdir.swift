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

var progName = CommandLine.arguments[0]

if CommandLine.argc == 1 {
    print("\(progName): missing operand")
    exit(1)
}

var FM = FileManager.default
var dPath = CommandLine.arguments[1]




// if FM.fileExists(atPath: dPath) {
//     print("Error: directory already exists.")
// }

do {
    try FM.createDirectory(atPath: dPath, withIntermediateDirectories: true, attributes: nil)
    print("Made directory at \(dPath).")
} 
catch {
    print(error)
}