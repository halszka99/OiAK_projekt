lef read /usr/share/qflow/tech/osu050/osu050_stdcells.lef
load dot
drc on
select top cell
expand
drc check
drc catchup
set dcount [drc list count total]
puts stdout "drc = $dcount"
quit
