The screen resolution almost always isn't detected properly in a VM and you need to manually fix it with `xrandr` on every boot. While this is fine for testing purposes, to make the changes persistent across reboots without a DE, you either need to add the respective `xrandr` command to your `.xinitrc`/`.xprofile`/`.desktop` autostart entry or use a static xorg config file.

`50-vmconfig.conf` is a sample file that fixes the issue. It fixes the resolution even for the display manager.
- `Identifier` in the file can be found out with the `xrandr` command
- `Modeline` can be found in Xorg's logs (`/var/log/Xorg.0.log`)
- `PreferredMode` option should contain the name of the modeline to use (first value after Modeline in double quotes)

`30-touchpad.conf` is a sample file to enable "tap-to-click" on display managers.