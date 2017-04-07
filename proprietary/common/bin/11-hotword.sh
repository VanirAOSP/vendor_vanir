#!/sbin/sh
#
# /system/addon.d/11-hotword.sh
# Automagically fix HotwordEnrollment that's broken by gapps on devices that include it in the ROM zip

export OUTFD=$(ps | grep -v "grep" | grep -o -E "update_binary(.\*)" | cut -d " " -f 3);
[ ! $OUTFD ] && export OUTFD=$(ps | grep -v "grep" | grep -o -E "/tmp/updater(.\*)" | cut -d " " -f 3);
[ ! $OUTFD ] && export OUTFD=1 #prevent syntax error that would be caused if OUTFD were unset, but we won't be outputting to the recovery console :-(

. /tmp/backuptool.functions

case "$1" in
  pre-restore)
    if [ ! -d /system/priv-app ]; then
      if mount /system; then
        IMOUNTED=0
      else
        echo "mount /system failed! plz inform nuclearmistake"
      fi
    fi
    if [ -f /tmp/addon.d/70-gapps.sh ] && grep -q HotwordEnrollment /tmp/addon.d/70-gapps.sh && [ -d /system/priv-app/HotwordEnrollment ]; then
      echo "Fixing HotwordEnrollment..."
      echo ""
      echo '\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*'
      echo "To complete the repair, enable always-on detection."
      echo "Hit retrain voice model before it becomes disabled."
      echo "It will subsequently stay enabled."
      echo '\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*'
      echo ""
      cp /tmp/addon.d/70-gapps.sh /tmp/70-gapps.sh
      cat /tmp/70-gapps.sh | grep -v HotwordEnrollment > /tmp/addon.d/70-gapps.sh
      rm -f /tmp/70-gapps.sh
    fi
    if [ $IMOUNTED ]; then
      if ! umount /system; then
        echo "umount /system failed! plz inform nuclearmistake"
      fi
    fi
  ;;
  \*)
    # no-op
  ;;
esac 2>&1 | while read LINE; do echo ui_print ${LINE} 1>&${OUTFD}; done
