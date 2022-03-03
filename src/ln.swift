/*
 *  ln.c - Link a file or a directory.
 *
 *  Part of neueCoreutils.
 *
 *  This software is freely distributable under the MIT License.
 *  Check <LICENSE> for more information.
 * 
 */

import Foundation

var FM = FileManager.default

let fpath = CommandLine.arguments[2]
let olink = CommandLine.arguments[3]
let progname = CommandLine.arguments[0]

switch CommandLine.arguments[1] {
    case "-s":
        FM.createSymbolicLink(atPath: fpath, withDestinationPath: olink)
    case "-l":
        FM.linkItem(atPath: fpath, toPath: olink)
    default:
        print("\(progname): no command provided.")
        exit(127)
        
}
