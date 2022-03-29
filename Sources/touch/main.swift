/*
 *  touch.swift - change file timestamps
 *
 *  Part of neueCoreutils.
 *
 *  This software is freely distributable under the MIT License.
 *  Check <LICENSE> for more information.
 * 
 */

import Foundation

var FM = FileManager.default

var argc = CommandLine.argc
var argv = CommandLine.arguments.count

let pname = "touch"