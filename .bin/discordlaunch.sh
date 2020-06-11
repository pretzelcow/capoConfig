#!/bin/bash

prompt="Select a Discord option"
DiscordApp="discord"
DiscordBrowser="brave https://www.discord.com/channels/@me"

check=$(echo -e "Discord App\nDiscord Browser" |dmenu -sb "#4a4e56" -nb "#2f3136" -i -p "$prompt") 

if [[ $check == "Discord App" ]]; then
	$DiscordApp
elif [[ $check == "Discord Browser" ]]; then
	$DiscordBrowser
else
	exit
fi
