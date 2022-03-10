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

var arg1 = CommandLine.arguments[1]
let arg2 = CommandLine.arguments[2]
let arg3 = CommandLine.arguments[3]
let arg2IsEmpty = arg2.isEmpty

if arg3.isEmpty == true { let tnn = 0 }


if arg1 == "-z" {
    if arg2IsEmpty == true { 
        print("var1 is empty.")
    }
    else {
        print("var1 isn't empty.") 
        }
}

if arg1 == "-n" {
    if arg2IsEmpty == false { 
        print("var1 isn't empty.") 
    }
    else {
        print("var1 is empty.") 
    }    
}

switch tn {
    case "-eq" | "=":
        if arg1 == arg3 {
            print("NCString.StrIsEqual")
        }
        else {
            print("NCString.StrIsnotEqual")
        }
    case "-ne" | "!=":
        if arg1 != arg3 {
            print("NCString.StrIsnotEqual")
        }
        else {
            print("NCString.StrIsEqual")
        }
    case "-ge":
        if arg1 >= arg3 {
            print("NCString.StrIsGrorEq")
        }
        else {
            print("NCString.StrIsNotGrorEq")
        }
    case "-gt":
        if arg1 > arg3 {
            print("NCString.StrIsGrThan")
        }
        else {
            print("NCString.StrIsNotGrThan")
        }
    case "-le":
        if arg1 <= arg3 {
            print("NCString.StrIsLeorEq")
        }
        else {
            print("NCString.StrIsNotLeorEq")
        }
    case "-lt":
        if arg1 < arg3 {
            print("NCString.StrIsLeThan")
        }
        else {
            print("NCString.StrIsNotLeThan")
        }
    default:
        print("")
}

