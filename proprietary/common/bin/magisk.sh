#!/sbin/sh
#
# install magisk
#

export OUTFD=$(ps | grep -v "grep" | grep -o -E "update_binary(.*)" | cut -d " " -f 3); #BIG props to Chainfire
[ ! $OUTFD ] && export OUTFD=$(ps | grep -v "grep" | grep -o -E "/tmp/updater(.*)" | cut -d " " -f 3); #BIG props nuclearmistake for TWRP-izing
ui_print() { if [ $OUTFD ]; then echo "ui_print $*" 1>&$OUTFD; else echo $*; fi; return 0; }

ui_print "Unpacking magisk installer script..."
busybox unzip /tmp/install/magisk.zip -d /tmp/magisk  2>&1 | while read output; do ui_print $output; done

ui_print "Installing magisk..."
/sbin/sh /tmp/magisk/META-INF/com/google/android/update-binary dummy $OUTFD /tmp/magisk/magisk.zip 2>&1 | while read output; do ui_print $output; done

ui_print ""
ui_print "Have fun android paying and pokemon going, suckas"
ui_print ""

exit 0
