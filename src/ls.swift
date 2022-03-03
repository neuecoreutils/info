/*
 *  ls.swift - List files in a directory.
 *
 *  Part of neueCoreutils.
 *
 *  This software is freely distributable under the MIT License.
 *  Check <LICENSE> for more information.
 * 
 */

import Foundation

var FM = FileManager.default

for arg in CommandLine.arguments {
    switch arg {
        case "-d":
            let apath = CommandLine.arguments[2]
            let fnf = try FM.contentsOfDirectory(atPath: apath)
            print("Listing files in directory \(apath).")
            for f in fnf {
                print("\(f)")
            }

        case "-Sd":
            let bpath = CommandLine.arguments[2]
            let fnf = try FM.subpathsOfDirectory(atPath: bpath)
            print("Listing subdirectories in directory \(bpath).")
            for f in fnf {
                print("\(f)")
            }
        default:
            let path = FileManager.default.currentDirectoryPath
            let fnf = try FM.contentsOfDirectory(atPath: path)        
            print("Listing files in directory \(path).")

            for f in fnf {
                print("\(f)")
            }
    }
}