# checknodes
check status of door controllers and other devices in a OneCard system

I use a Windows Task "HeartlandNodeStatus" (also here as an .XML) to run my chknodes.ps1 script on a "jump" server under my account every 10 minutes 24/7/365.
The script checks if each device is online or offline and logs it as UP or DOWN. 

My eventual goals is proactive monitoring. I'd like to notify my team if a particular device has been offline for more than an hour or 5 or more devices
change to offline that were online 10 minutes ago. But, for now, I use Notepad++ to search the log for these types of patterns.
