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
var progName = CommandLine.arguments[0]

if CommandLine.argc == 1 {
    print("\(progName): missing operand")
    exit(1)
}

var dPath = CommandLine.arguments[1]

do {
    try FM.removeItem(atPath: dPath)
} catch {
    print(error)
}