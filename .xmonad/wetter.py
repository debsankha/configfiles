#!/usr/bin/python
goe_id=2918632

import urllib
import json 
f=urllib.urlopen("http://api.openweathermap.org/data/2.5/weather?id=%d"%goe_id)


details=json.load(f)

city_name="Goettingen"
weather_desc=details['weather'][0]['description']

cur_temp=details['main']['temp']-273
min_temp=details['main']['temp_min']-273
max_temp=details['main']['temp_max']-273

#print "%s: %dC (%dC/%dC), %s"%(city_name,cur_temp,min_temp,max_temp,weather_desc)
print "%s: %dC, %s"%(city_name,cur_temp,weather_desc)


