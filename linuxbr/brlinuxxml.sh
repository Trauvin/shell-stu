#!/bin/bash

# Trauvin

URL=http://br-linux.org/feed/

lynx -source "$URL" |
	grep '<title><!'| # get title
	sed 's/<[^!>]*>//g' |  	       # remove tag <title>	        
	sed 's/<[^<]>*//g' |           # remove <!
	sed 's/CDATA/''/g' |	       # remove CDATA 
	sed 's/[[^[]//g' |	       # remove the square brackets start 
	sed 's/[]*]]//g' |	       # remove the squre brackets end
	sed 's/>*//g' |		       # remove > end
	head -n 5

