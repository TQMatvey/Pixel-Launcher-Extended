#!/bin/bash

# Read version from module.prop file
version=$(grep "version=" module.prop | cut -d "=" -f 2)

# Delete existing installers
rm -rf "Pixel Launcher Extended*.zip"

# Create Offline Installer
echo ">> Creating Offline Installer"
cp offline_setup.sh setup.sh
zip -r -q "Pixel Launcher Extended Offline Installer $version.zip" . -x .git/\* screenshots/\* builder.sh builder_dependencies.sh banner.jpg banner2.jpg changelog.md codename.txt logo.png online_setup.sh customize_setup.sh manual_setup.sh manual_installer_instructions.md README.md Pixel\ Launcher\ Extended*
rm setup.sh

# Create Online Installer
echo ">> Creating Online Installer"
cp online_setup.sh setup.sh
zip -r -q "Pixel Launcher Extended Online Installer $version.zip" . -x .git/\* Modifications/\* screenshots/\* builder.sh builder_dependencies.sh banner.jpg banner2.jpg changelog.md codename.txt logo.png offline_setup.sh customize_setup.sh online_setup.sh manual_setup.sh manual_installer_instructions.md config.txt README.md system/product/priv-app/NexusLauncherRelease/*\* system/product/priv-app/PixelLauncherMods/PixelLauncherMods.apk system/product/overlay/ThemedIconsOverlay/*\* system/system_ext/priv-app/WallpaperPickerGoogleRelease/* system/product/overlay/TeamFiles* system/product/priv-app/ExtendedSettings/ExtendedSettings.apk system/product/priv-app/IconShapeChanger/IconShapeChanger.apk Pixel\ Launcher\ Extended*
rm setup.sh
