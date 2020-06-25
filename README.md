# wheres-my-crap-ezcopy
when someone needs a new laptop setup.. just plug n click 
This all started with upgrading 20+ laptops when win7 end of life'd. I needed a way to just pull all their crap, and deploy it back on a fresh OS. dont ask if they need it, Just put it there. Its a batch file that uses Robocopy to grab the Serial Number, Create director named that serial number, copy My Docs, Pics, Music, Download, Desktop, Favorites, and Grab an ipconfig /all>>file.txt (for MAC address logging). I built it out of snippets from Stackoverflow and that tinkered to suit my needs. 
Im stuck still with identifing the external drive used. I currently have like 7 iterations that use E: F: D: etc., Or ill just assign the drive letter X: in parti manager. 
It pulls the junk just fine. I never got around to making it Dump it back in though. I was done in no time, so there was no longer a need for for the batch. Just thought I would share!
