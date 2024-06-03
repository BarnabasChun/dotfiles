#!/usr/bin/env zsh

echo "\n<<< Starting macOS Setup >>>\n"

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

###############################################################################
# General UI/UX                                                               #
###############################################################################

# Show path bar in Finder
defaults write com.apple.finder ShowPathbar -bool true

# Only show dock on hovering bottom of screen
defaults write com.apple.dock autohide -bool true

# Show remaining battery percentage
defaults -currentHost write com.apple.controlcenter.plist BatteryShowPercentage -bool true

# Trackpad: map bottom right corner to right-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true

# turn off backlit keyboard
nvram backlight_level=0

# Don’t show recent applications in Dock
defaults write com.apple.dock show-recents -bool false

# Show hidden files
defaults write com.apple.Finder AppleShowAllFiles -bool true

###############################################################################
# Change Default Keyboard Shortcuts                                           #
###############################################################################

# turn off spotlight opening w/ CMD + Space (clashes w/ Alfred)
defaults write com.apple.symbolichotkeys.plist AppleSymbolicHotKeys -dict-add 64 "<dict><key>enabled</key><false/></dict>"

# Remap caps-lock to escape (https://developer.apple.com/library/archive/technotes/tn2450/_index.html)
hidutil property --set '{
  "UserKeyMapping":[{
    "HIDKeyboardModifierMappingSrc":0x700000039,
    "HIDKeyboardModifierMappingDst":0x700000029
  }]
}'

# force taking effect of changes to shortcut changes (https://zameermanji.com/blog/2021/6/8/applying-com-apple-symbolichotkeys-changes-instantaneously/)
/System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u

###############################################################################
# Terminal & iTerm 2                                                          #
###############################################################################

# Specify the preferences directory
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "~/.dotfiles/iTerm2"

# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true

# Don’t display the prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

###############################################################################
# Kill affected applications                                                  #
###############################################################################
killall Finder
killall Dock