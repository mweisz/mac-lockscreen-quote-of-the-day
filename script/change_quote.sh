#!/bin/bash

# by Michael Weisz (feaDawn)
# June 22nd 2014

# This script sets the message at the login/lock screen
# to a string randomly read from a provided file. 
# The string will change each time on startup. 


# The text file containing the messages (e.g. quotations)
sourceFile='~/.quote-of-the-day/quotes.txt'

# Read random line of file
line=$(head -$((${RANDOM} % `wc -l < $sourceFile` + 1)) $sourceFile | tail -1)

# TODO
# modify line accordly to make it fit. Tweak formatting etc.

# Set line as lock screen message
defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText "$line"

