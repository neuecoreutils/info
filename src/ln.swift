/*
 *  ln.swift - Link a file or a directory.
 *
 *  Part of neueCoreutils.
 *
 *  This software is freely distributable under the MIT License.
 *  Check <LICENSE> for more information.
 * 
 */

import Foundation

var FM = FileManager.default

var fpath = CommandLine.arguments[2]
var olink = CommandLine.arguments[3]
var progName = CommandLine.arguments[0]

if CommandLine.argc == 1 {
    print("\(progName): missing operand")
    exit(1)
}

if CommandLine.arguments[1] == "-s" {
        try FM.createSymbolicLink(atPath: fpath, withDestinationPath: olink)
}
if CommandLine.arguments[1] == "-l" {
        try FM.linkItem(atPath: fpath, toPath: olink)
}
