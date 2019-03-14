A4
  
# start gmt session# set file name
out_ps=taiwan.ps
  
# reset output paper size to A4
gmt set PS_MEDIA  -T -K -P > $out_ps
  1 
gmt psxy -R0/1/0/-JX1c
# write your gmt code here
gmt pscoast -R119/123/21/26 -Jm4 -B1 -W1 -Df -Ia -P -O -K  >> $out_ps
  
# end gmt session
gmt psxy -R -J -O -T >> $out_ps
  
# convert to pdf
# convert to png
gmt psconvert $out_ps -P -Tf
gmt psconvert $out_ps -P -Tg