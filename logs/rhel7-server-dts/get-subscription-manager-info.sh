#!/bin/sh
#
# loop through subscription manager info commands.

CMDS="status list identity service-level facts"

for cmd in $CMDS
do
	echo ===== $cmd =====
        subscription-manager $cmd
done


