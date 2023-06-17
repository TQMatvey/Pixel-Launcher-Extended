#!/bin/bash

# Read version from module.prop file
version=$(grep "version=" module.prop | cut -d "=" -f 2)

# Delete existing installers
rm -rf "Pixel Launcher Extended Offline Installer $version.zip"

# Create Offline Installer
echo ">> Creating Offline Installer"
cp offline_setup.sh setup.sh
zip -r -q "Pixel Launcher Extended Offline Installer $version.zip" . -x .git/\* screenshots/\* builder.sh builder_dependencies.sh banner.jpg banner2.jpg changelog.md codename.txt logo.png online_setup.sh customize_setup.sh manual_setup.sh manual_installer_instructions.md README.md Pixel\ Launcher\ Extended*
rm setup.sh
