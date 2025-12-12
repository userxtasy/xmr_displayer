# xmr_displayer
this smol script display the current curse of xmr on your waybar. 
It use an api from coingecko. fetch it and display it on your waybar. it updates itself every 1 min ! 
it might break sometimes because of gecko's call rate-limits. ( use another api if needed. ) 

## specificities 

the logo are from Nerd Font. 


ps : im a bit lazy to write a well-written readme.md. might change it later ! ( or not ) 


# update from 12-12-25 

this morning i did the waybar part which consists in configuring the waybar config file and then reloading waybar. little problem is there was no output on the waybar. 
waybar and "while true" doesn't go well together ! so the "while true" part will be dealed by waybar with the argument "interval" : 5. 
i also used an mozilla agent so i don't get the rate-limits error. 
