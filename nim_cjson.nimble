# Package

version       = "0.1.0"
author        = "muxueqz"
description   = "cjson wrapper for Nim"
license       = "MIT"

skipDirs = @["tests"]

# Dependencies

requires "nimgen >= 0.1.4"

import distros

var cmd = ""
if detectOs(Windows):
    cmd = "cmd /c "

task setup, "Download and generate":
    exec cmd & "nimgen nim_cjson.cfg"

before install:
    setupTask()

task test, "Test nim_cjson":
    exec "nim c -r tests/test_cjson.nim"
