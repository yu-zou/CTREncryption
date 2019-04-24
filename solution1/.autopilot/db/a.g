#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/yzou/CTREncryption/solution1/.autopilot/db/a.g.bc ${1+"$@"}
