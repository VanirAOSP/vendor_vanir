#!/bin/bash
COMBOS()
{
find vendor/vanir/products -name vanir_*.mk | while read FILE; do basename $FILE .mk | sed 's/vanir\_//g'; done
}
for x in `COMBOS | sort -h`; do
  ## ordered based on testicular circumference: decreasing
  add_lunch_combo vanir_$x-eng
  add_lunch_combo vanir_$x-userdebug
  add_lunch_combo vanir_$x-user
done

