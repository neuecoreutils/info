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
var progName = CommandLine.arguments[0]

if CommandLine.argc == 1 {
        let path = FileManager.default.currentDirectoryPath
        let fnf = try FM.contentsOfDirectory(atPath: path)        
        print("Listing files in directory \(path).")
        
        for f in fnf {
            print("\(f)")
        }
}

if CommandLine.argc == 2 {
    let apath = CommandLine.arguments[1]
    let fnf = try FM.contentsOfDirectory(atPath: apath)
    print("Listing files in directory \(apath).")
    for f in fnf {
        print("\(f)")
    }
}

if CommandLine.arguments[1] == "-lS" {
            let bpath = CommandLine.arguments[2]
            let fnf = try FM.subpathsOfDirectory(atPath: bpath)
            print("Listing subdirectories in directory \(bpath).")
            for f in fnf {
                print("\(f)")
            }
}
