#/bin/bash

 prompt="Do you want to shutdown?" 
 prompt2="shutdown now"

[ $(echo -e "No\nYes" |dmenu -sb "red" -nb "darkred" -i -p "$prompt")  \
== "Yes" ] && $prompt2
