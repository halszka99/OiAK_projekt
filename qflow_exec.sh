#!/usr/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project /home/karolina/OiAK_projekt
#-------------------------------------------

# /usr/lib/qflow/scripts/synthesize.sh /home/karolina/OiAK_projekt adder /home/karolina/OiAK_projekt/source/adder.v || exit 1
# /usr/lib/qflow/scripts/placement.sh -d /home/karolina/OiAK_projekt adder || exit 1
# /usr/lib/qflow/scripts/opensta.sh  /home/karolina/OiAK_projekt adder || exit 1
# /usr/lib/qflow/scripts/vesta.sh -a /home/karolina/OiAK_projekt adder || exit 1
# /usr/lib/qflow/scripts/router.sh /home/karolina/OiAK_projekt adder || exit 1
# /usr/lib/qflow/scripts/opensta.sh  -d /home/karolina/OiAK_projekt adder || exit 1
# /usr/lib/qflow/scripts/vesta.sh -a -d /home/karolina/OiAK_projekt adder || exit 1
# /usr/lib/qflow/scripts/migrate.sh /home/karolina/OiAK_projekt adder || exit 1
# /usr/lib/qflow/scripts/drc.sh /home/karolina/OiAK_projekt adder || exit 1
# /usr/lib/qflow/scripts/lvs.sh /home/karolina/OiAK_projekt adder || exit 1
# /usr/lib/qflow/scripts/gdsii.sh /home/karolina/OiAK_projekt adder || exit 1
# /usr/lib/qflow/scripts/cleanup.sh /home/karolina/OiAK_projekt adder || exit 1
/usr/lib/qflow/scripts/display.sh /home/karolina/OiAK_projekt adder || exit 1
