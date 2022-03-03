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
var progName = "cp"
var verNum = "1.0"

let cpitem = CommandLine.arguments[1]
let todir = CommandLine.arguments[2]

do {
    try FM.copyItem(atPath: cpitem, toPath: todir)
} catch {
    print(error)
}
