##Summary
this code is for people who want to check to see if there are open availabilities at a particular disney restaurant then if there is an availability, send an alert to your email. if not, the program will wait 15 minutes before checking again. let me know if anyone has any suggestions on things Icould change, feedback is very apreciated :)
there are a few steps we need to take before running this script.

#Requirements:
terminal that can run programs (I use linux terminal)
internet connection/web browser (I used chrome)

#WARNING: this script is a brute force aproach and some things need to be changed within the code before running and you will not be able to use this computer while it is running. so this is code for if you want it to run while you are out of the house or not using this computer. I am also assuming you have mediocre programming skills
#STEPS
- 1. open a terminal and download xdotools package using `sudo apt-get install xdotool`
- 2. open a seperate web browser, I used chrome on linux and do not know if the keyboard shortcuts are the same. we will be utilizing the **ctrl+shift+tab** to move between tabs on chrome, and **alt+tab** to move between the terminal and chrome
- 3. open gmail and log in to your account.
- 4. open the disney web page and find the restaurant you want to check availability for.
- 5. select the date and time you want reservations for on the right side.
- 6. zoom out until you can see the "search times" button from the top (this is incase the bot needs to refresh she page it will sometimes start from the top of the web page)
- 7. using the `test.sh` program we need to find the coordinates that match up with the "search times" button, this may take some trial and error. 
- 7.1. run `test.sh` to see where the cursor lies, if it ends up too far left or right, add more or subtract from the first value (x coordinate)
- 7.2. if the cursor ends up too far up or down add or subtract from the second value (y coordinate)- 
- 8. once you have found those 2 numbers, change the file `be_our_guest.sh` line 7 (`xdotool mousemove 930 607`) to the 2 coordinates you just found.
- 9. move to the gmail page we just opened up, make sure you have keyboard shortcuts turned on in settings
- 10. press c to compose a new message.
- 11. repeat step 7 to find the correct spot the mouse needs to be to hover over the "send" button (**ctrl+Enter** did not work for me to send the message from the keyboard with xdotool for some reason so this is why we do this step)
- 12. once you have found the correct coordinates change line 79 (`xdotool mousemove 840 740`) to the coordinates you just found
- 13. go back to the disney page and press "search times"
- 14. repeat step 7 again to find the correct coordinates for the mouse to hover over the first line of the ouput, it will say something like " no available times..." or "Available times" or give you an error, we want the mouse to hover over the spot so when we tripple left click it will highlight the entire sentence
- 15. once you have found that coordinate, change line 14 (`xdotool mousemove 930 650`) to the coordinates you just found
- 16. change line 66 (`xdotool type 'example@gmail.com'`) to the email you want the alert to be sent to
- 17. place the web browser with only gmail and the disney site on top of this web page
- 18. place the terminal over that web page and adjust the size to fit the left half of the screen, ( you may want to run `test.sh` with the coordinates from line 31 (`xdotool mousemove 430 450`) to make sure the mouse is within the terminal because here the program will need to right click inside the terminal)
- 19. run `./be_our_guest.sh` in the terminal and make sure the program is running how it is supposed to. if it does something wrong like click in the wrong spot, go back to the terminal and type ctrl+c enter, or however you stop a program on your operating system
