# copy the old icon to app_old.icns
mv /Applications/Google\ Chrome.app/Contents/Resources/app.icns alt/original-$(date +%s).icns
# copy our new icon into place
cp chrome.icns /Applications/Google\ Chrome.app/Contents/Resources/app.icns
# refresh the plist that caches app icons to use the new icon (not entirely sure whether this is necessary, but it won't hurt)
touch /Applications/Google\ Chrome.app
touch /Applications/Google\ Chrome.app/Contents/Info.plist
#sudo find /private/var/folders/ -name com.apple.dock.iconcache -exec rm {} \;
# refresh the dock
killall Dock