drc off
box 0 0 0 0
gds readonly true
gds rescale false
gds read /usr/share/qflow/tech/osu050/osu05_stdcells.gds2
load in
select top cell
expand
gds write in
quit
