/*
 *  Copyright (C) 2022 WDXP.
 * 
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
var progName = CommandLine.arguments[0]

if CommandLine.argc == 1 {
    print("\(progName): missing operand")
    exit(1)
}
var argv = CommandLine.arguments
var argc = CommandLine.argc

if argc == 4 && argv[1] == "-s" {
        try FM.createSymbolicLink(atPath: argv[2], withDestinationPath: argv[3])
}
if argc == 4 && argv[1] == "-l" {
        try FM.linkItem(atPath: argv[2], toPath: argv[3])
}

if argc == 1 {
        print("ln: no operand")
}