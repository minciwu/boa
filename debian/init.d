#! /bin/sh
#
# This file was automatically customized by debmake on Mon, 23 Dec 1996 20:27:43 -0800
#
# Written by Miquel van Smoorenburg <miquels@drinkel.ow.org>.
# Modified for Debian GNU/Linux by Ian Murdock <imurdock@gnu.ai.mit.edu>.
# Modified for Debian by Christoph Lameter <clameter@debian.org>

PATH=/bin:/usr/bin:/sbin:/usr/sbin
DAEMON=/usr/sbin/boa
# The following value is extracted by debstd to figure out how to generate
# the postinst script. Edit the field to change the way the script is
# registered through update-rc.d (see the manpage for update-rc.d!)
FLAGS="defaults 50"

test -f $DAEMON || exit 0

case "$1" in
  start)
    $DAEMON &
    ;;
  stop)
    start-stop-daemon --stop --verbose --exec $DAEMON
    ;;
  *)
    echo "Usage: /etc/init.d/$0 {start|stop}"
    exit 1
    ;;
esac

exit 0