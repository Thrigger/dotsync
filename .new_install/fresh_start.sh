# Assume superuser
OPERATING_SYSTEM=$(lsb_release -d)
if [[ $OPERATING_SYSTEM == *"Fedora"* ]]; then
	INSTALL_APP="dnf -y"
fi

$INSTALL_APP upgrade
$INSTALL_APP install ${ cat ~/scripts/applications.txt }
