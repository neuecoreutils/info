/*
 *  cp.swift - copy a file.
 *
 *  Part of neueCoreutils.
 *
 *  This software is freely distributable under the MIT License.
 *  Check <LICENSE> for more information.
 * 
 */

import Foundation

var FM = FileManager.default
var verNum = "1.0"
var progName = CommandLine.arguments[0]

if CommandLine.argc == 1 {
    print("\(progName): missing operand")
    exit(1)
}

let cpitem = CommandLine.arguments[1]
let todir = CommandLine.arguments[2]

/////////////////////////////////////////////////////
    do {
        try FM.copyItem(atPath: cpitem, toPath: todir)
    } catch {
        print(error)
    }
////////////////////////////////////////////////////

