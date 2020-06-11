#!bin/bash

prompt="Select a website"

web0=https://duckduckgo.com/
web1=https://www.youtube.com/
web2=https://drudgereport.com/

select=$(echo -e "DuckDuckGo\nYoutube\nDrudgeReport" |dmenu -nb "#201e38" -sb "#302989" -i -p "$prompt")
	
if [[ $select == "DuckDuckGo" ]]; then
	brave $web0
elif [[ $select == "Youtube" ]]; then
	brave $web1
elif [[ $select == DrudgeReport ]]; then
	brave $web2
fi
