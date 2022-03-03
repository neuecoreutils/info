/*
 *  mkdir.c - Make a directory.
 *
 *  Part of neueCoreutils.
 *
 *  This software is freely distributable under the MIT License.
 *  Check <LICENSE> for more information.
 * 
 */

import Foundation

var FM = FileManager.default
var dPath = CommandLine.arguments[1]

do {
    FM.createDirectory(atPath: dPath, withIntermediateDirectories: true, attributes: nil)
    print("Made directory at \(dPath).")
} 
catch {
    print("Error making directory.")
    
}