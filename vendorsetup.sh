#!/bin/bash
COMBOS()
{
cat<<EOF
anzu
coconut
codina
codinalte
deb
d2lte
d710
d800
d801
d802
d803
dlx
e980
falcon
find5
find7
flo
geeb
gee
golden
grouper
haida
hallon
hammerhead
hlte
honami
i9100g
i9300
i9305
i9500
jactiveltexx
jflte
klte
ls980
m4
m7att
m7spr
m7tmo
m7ul
m7vzw
m8
maguro
mango
mako
mondrianwifi
moto_msm8960
nicki
p880
skomer
smultron
taoshan
tf700t
tf701t
toro
urushi
v500
vs980
EOF
}

for x in `COMBOS | sort -h`; do 
  add_lunch_combo vanir_$x-userdebug
  add_lunch_combo vanir_$x-user
done
add_lunch_combo vanir_klte-eng


COMBOL()
{
cat<<EOF
evita
i605
janice
iyokan
jewel
manta
maserati
moto_msm8960dt
n1
p3110
pollux
pollux_windy
satsuma
sirius
t0lteatt
t0ltetmo
tilapia
toroplus
ville
yuga
EOF
}

for x in `COMBOL| sort -h`; do 
  add_lunch_combo vanir_legacy_$x-userdebug
  add_lunch_combo vanir_legacy_$x-user
done
