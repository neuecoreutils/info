/*
 *  mv.swift - move a file.
 *
 *  Part of neueCoreutils.
 *
 *  This software is freely distributable under the MIT License.
 *  Check <LICENSE> for more information.
 * 
 */

import Foundation

var FM = FileManager.default

var fp1 = CommandLine.arguments[1]
var fp2 = CommandLine.arguments[2]

do {
    try FM.moveItem(atPath: fp1, toPath: fp2)
} catch {
    print(error)
}