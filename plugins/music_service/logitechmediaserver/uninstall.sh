## LMS uninstallation script
echo "Uninstalling LMS and its dependencies..."
INSTALLING="/home/volumio/lms-plugin.uninstalling"

if [ ! -f $INSTALLING ]; then

	touch $INSTALLING

	# Uninstall LMS
	dpkg -P squeezeboxserver

	rm $INSTALLING

	#required to end the plugin uninstall
	echo "pluginuninstallend"
else
	echo "Plugin is already uninstalling! Not continuing..."
fi
