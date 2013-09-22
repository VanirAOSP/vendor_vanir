#!/bin/bash
ZOMG_ITS_A_COMBO_COMBO()
{
  for x in \
    deb \
    d2att \
    d2spr \
    d2tmo \
    d2vzw \
    e975 \
    e980 \
    flo \
    grouper \
    hercules \
    i605 \
    i9300 \
    i9305 \
    jewel \
    jflteatt \
    jfltecan \
    jfltecri \
    jfltespr \
    jfltetmo \
    jfltevzw \
    m7att \
    m7spr \
    m7tmo \
    m7ul \
    m7vzw \
    maguro \
    manta \
    mako \
    maserati \
    ovation \
    p880 \
    pollux \
    t0lteatt \
    t0ltetmo \
    tilapia \
    toro \
    p700 \
    toroplus \
    vigor \
    yuga;
  do
    add_lunch_combo vanir_$x-$1
  done
}

ZOMG_ITS_A_COMBO_COMBO userdebug
ZOMG_ITS_A_COMBO_COMBO user
