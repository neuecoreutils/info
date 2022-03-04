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
let tn = CommandLine.arguments[2]
let tnn = CommandLine.arguments[3]
let tnIsEmpty = tn.isEmpty

if tnn.isEmpty == true { let tnn = 0 }

switch operand {
    case "-z":
        if tnIsEmpty == true { 
            print("var1 is empty.") 
            }
        else {
            print("var1 isn't empty.") 
            }
    case "-n":
        if tnIsEmpty == false { 
            print("var1 isn't empty.") 
            }
        else {
            print("var1 is empty.") 
            }    
    case "-eq":
        if tn == tnn {
            print("\(tn) = \(tnn)")
        }
        else {
            print("\(tn) !=  \(tnn)")
        }
    case "-ne":
        if tn != tnn {
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
            print("\(tn) >= \(tnn)")
        }
        else {
            print("\(tn) <= \(tnn)")
        }
    case "-le":
        if tn <= tnn {
            print("\(tn) <= \(tnn)")
        }
        else {
            print("\(tn) >= \(tnn)")
        }
    default:
        print("test: No command given")
}