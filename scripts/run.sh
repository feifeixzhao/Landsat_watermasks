#!/bin/bash
river='Brahmpautra_Large'
poly="C:\Users\Feifei\GEE_watermasks-master\example\Brahmaputra_Small\brahm_small.gpkg"
mask_method="Jones"     # Jones, Zou, esa
dataset='sentinel'      # landsat, sentinel
network_method="grwl"   # grwl, merit, largest, all
# Needs to be on computer
images="true"   # true, false
masks="true"    # true, false
water_level="1"
start="01-01"   # Month-Day format with leading 0s
end="12-31"     # Month-Day format with leading 0s
start_year="2021"   
end_year="2021"     
out="C:\Users\Feifei\repos"

python ../GEE_watermasks/main.py --poly $poly --mask_method $mask_method --network_method $network_method --network_path $network_path --masks $masks --images $images --dataset $dataset --water_level $water_level --start $start --end $end --start_year $start_year --end_year $end_year --out $out --river $river
