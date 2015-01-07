#!/bin/bash
###############################################################################
#
# Checks if there are homebrew updates every day if connected to network and
# gives the user a notification, prompting them to upgrade packages.
#
# Doesn't actually upgrade because let's face it, that would break things.
# (will not create an album - yet).
#
# Author: Braxton Schafer
#
# Changelog:
#
###############################################################################
version=1

curr_dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
homebrew_base

cp "$curr_dir/autobrew.command" "$homebrew_base/bin/autobrew.command
chmod +x "$homebrew_base/bin/autobrew.command"

cp "$curr_dir/com.bjschafer.autobrew.plist" "$HOME/Library/LaunchAgents/com.bjschafer.autobrew.plist"
launchctl load com.bjschafer.autobrew.plist

exit 0
