#!/bin/bash
# move this file into /etc/profile.d

if [ -z "$QT_QPA_PLATFORMTHEME" ]; then
	export QT_QPA_PLATFORMTHEME="qt5ct"
fi
if [ -z "$QT_STYLE_OVERRIDE" ]; then
	export QT_STYLE_OVERRIDE="kvantum"
fi
