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

let cpitem = CommandLine.arguments[1]
let todir = CommandLine.arguments[2]

try FM.copyItem(atPath: cpitem, toPath: todir)