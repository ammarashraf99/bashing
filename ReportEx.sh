#!/bin/bash
#: Description : print formatted sales report

## Build a long string of equals signs

divider=============================================================  
divider=$divider$divider                                              # the length here does not matter as long as it longer
								      # than a specific lenght, wich will be 43 as you'll see

## Format strings for printf
header="\n %-10s %11s %8s %10s\n"      # lets do some maths: 10 + 11 + 8 + 10 = 39, add 4 spaces in the header format, you get 43
format=" %-10s %11.2f %8d %10.2f\n"    # It's the same....

## Width of divider
totalwidth=43

## Print categories
printf "$header" ITEM "PER UNIT" NUM TOTAL

## Print divider to match width of report
printf "%$totalwidth.${totalwidth}s\n" "$divider"  # The Width(before the dot) sets the whole width to totwid, and the one after the dot
                                                   # puts a limit on to the ARG, which is divider, so no matter how long is divider, it 
                                                   # will always stay 43

## Print lines of report
printf "$format" \
       Chair 79.95 4 319.8 \
       Table 209.99 1 209.99 \
       Armchair 315.49 2 630.98


#  ITEM          PER UNIT      NUM      TOTAL
# ===========================================
#  Chair            79.95        4     319.80
#  Table           209.99        1     209.99
#  Armchair        315.49        2     630.98

# This will be the output. the first ARG is always flushed right, the rest is flushed left...
# Notice the calculation we did, the last = sign is aligned with the last format character.
