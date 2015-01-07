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

function notify_user()
{
	osascript -e 'display notification "Run brew upgrade to upgrade them." with title "Homebrew" subtitle "Updates available!"'
}

function check_update()
{
	updates=`brew update`
	if [[ "$updates"==*"up-to-date"* ]]; then
		echo "no updates"
		exit 0
	fi

	notify_user
}

check_update
exit 0
