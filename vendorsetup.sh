#!/bin/bash
ZOMG_ITS_A_COMBO_COMBO()
{
  for x in \
    deb \
    flo \
    grouper \
    hercules \
    i605 \
    jewel \
    jflteatt \
    jfltecan \
    jfltecri \
    jfltespr \
    jfltetmo \
    jfltevzw \
    m7vzw \
    maguro \
    manta \
    mako \
    maserati \
    t0ltetmo \
    tilapia \
    toro \
    toroplus \
    yuga;
  do
    add_lunch_combo vanir_$x-$1
  done
}

ZOMG_ITS_A_COMBO_COMBO userdebug
ZOMG_ITS_A_COMBO_COMBO user
