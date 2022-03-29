/*
 *  Copyright (C) 2022 WDXP.
 * 
 *  ln.swift - Link a file or a directory.
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
var argv = CommandLine.arguments

let pname = "ln"