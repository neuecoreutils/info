/*
 *  test.swift - check file types and compare values
 *  This is a test application. This is not an alpha version.
 *
 *  Part of neueCoreutils.
 *
 *  This software is freely distributable under the MIT License.
 *  Check <LICENSE> for more information.
 * 
 */

import Foundation

var operand = CommandLine.arguments[1]
var tn = CommandLine.arguments[2]
var tnn = CommandLine.arguments[3]

switch operand {
    case "-z":
        if tn == 0 {
            print("\(tn) = 0")
        }
        else {
            print("\(tn) != 0")
        }
    case "-n":
        if tn > 0 {
            print("\(tn) > 0")
        }
        else {
            print("\(tn) < 0")
        }
    case "-eq":
        if tn == tnn {
            print("\(tn) = \(tnn)")
        }
        else {
            print("\(tn) !=  \(tnn)")
        }
    case "-ne":
        if tn == tnn {
            print("\(tn) != \(tnn)")
        }
        else {
            print("\(tn) = \(tnn)")
        }
    case "-gt":
        if tn > tnn {
            print("\(tn) > \(tnn)")
        }
        else {
            print("\(tn) < \(tnn)")
        }
    case "-lt":
        if tn < tnn {
            print("\(tn) < \(tnn)")
        }
        else {
            print("\(tn) > \(tnn)")
        }
    case "-ge":
        if tn >= tnn {
            print("\(tn) > \(tnn)")
        }
        else {
            print("\(tn) <  \(tnn)")
        }
    case "-le":
        if tn <= tnn {
            print("\(tn) > \(tnn)")
        }
        else {
            print("\(tn) <  \(tnn)")
        }
    default:
        print("test (neueCoreutils) 0.0a")
}