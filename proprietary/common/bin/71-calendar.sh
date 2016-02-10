#!/sbin/sh
#
# /system/addon.d/71-calendar.sh
# Automagically fix duplicate calendars by removing AOSP calendar from /system when Google Calendar is installed from the play store
#
# BIG props to Chainfire for the stdout redirect hautness
# BIG props nuclearmistake for TWRP-izing it
export OUTFD=$(ps | grep -v "grep" | grep -o -E "update_binary(.*)" | cut -d " " -f 3);
[ ! $OUTFD ] && export OUTFD=$(ps | grep -v "grep" | grep -o -E "/tmp/updater(.*)" | cut -d " " -f 3);
ui_print() { if [ $OUTFD ]; then echo "ui_print $*" 1>&$OUTFD; fi; return 0; }

. /tmp/backuptool.functions

case "$1" in
  backup)
    # no-op
  ;;
  restore)
    # Stub
  ;;
  pre-backup)
    # Stub
  ;;
  post-backup)
    if ls /data/app | grep -q com.google.android.calendar-; then
      ui_print "Auto-removing AOSP calendar from /system because you have installed Google calendar from the Play store"
      rm -Rf $S/app/Calendar
    fi
  ;;
  pre-restore)
    # Stub
  ;;
  post-restore)
    # Stub
;;
esac
