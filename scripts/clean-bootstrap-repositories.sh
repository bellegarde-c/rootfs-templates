#!/bin/bash

# Fix issue with locales 2.37-16
cat << EOF > /etc/default/locale
LC_ALL=en_US.UTF-8
LANG=en_US.UTF-8
EOF

# Remove extrepos
rm -f /etc/apt/sources.list.d/extrepo_droidian.sources
rm -f /etc/apt/sources.list.d/extrepo_mobian.sources
rm -f /etc/apt/sources.list.d/extrepo_adishatz.sources
rm -f /var/lib/extrepo/keys/hybris-mobian.asc
rm -f /var/lib/extrepo/keys/mobian.asc
rm -f /var/lib/extrepo/keys/adishatz.asc

# Nuke /etc/apt/sources.list
> /etc/apt/sources.list

# Finally update again
apt update

exit 0
