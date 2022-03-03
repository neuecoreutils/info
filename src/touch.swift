/*
 *  touch.swift - Make a file.
 *
 *  Part of neueCoreutils.
 *
 *  This software is freely distributable under the MIT License.
 *  Check <LICENSE> for more information.
 * 
 */

import Foundation

var FM = FileManager.default
var fPath = CommandLine.arguments[1]

do {
    FM.createFile(atPath: fPath, contents: nil, attributes: nil)
} catch {
    print(error)
}