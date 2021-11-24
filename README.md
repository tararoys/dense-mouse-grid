# Dense Mouse Grid

A hands-free mouse grid by Tara Roys, timotimo, and aegis.

To use this, put the folder dense_mouse_grid anywhere in the talon user directory. This assumes that 1. you have Talon installed, and 2. you are using the knausj talon repository detailed in the [installation instructions here](https://talonvoice.com/docs/index.html#getting-started)  This script depends on having support from a phonetic alphabet and numbers scripts.  It is designed to be used along with the knausj-talon repository, but is compatable with any repository that provides the letters a-z using the <user.letters> capture and numbers using the <numbers> caputure.
        

The Alphabet Soup mouse is a completely hands-free replacement for traditional mousing. It replaces mouse movements with voice commands.  You tell the computer what grid coordinate you want to move to on the screen, and the mouse grid moves your cursor to that location

# Opening The Mouse Grid
        
To **open the dense mouse grid,** say 

    alphabet soup

To **close the dense mouse grid**, say

    alphabet close
  

![open-close-small](https://user-images.githubusercontent.com/1163925/138029358-a9e16d56-5a30-4230-9150-fd70ef2dc52c.gif)

# Using The Mouse Grid        
        
To **use the mouse grid, say a number and two letters from whichever Talon phonetic alphabet you are using.**  For example, if you are using the default Talon phonetic alphabet that comes with the knausj-talon repository, to go grid location grid square 1, row B, colum C, you would say 

    One Bat Cap 
    
You can say each coordinate slowly, as individual commands, and each time you say a command the grid will give a visual indicator of what you have chosen.  As you get more proficient, you can say the command quickly and the grid will teleport the mouse to that coordinate.  
        

The grid will appear with the frame overlay.  the frame overlaty 'frames' each of the large blocks with letters to indicate row and column.  Saying a coordinate in the following manner: 

    two

This will select the two block, make the large number two disappear, and remove the color overlay to show that this block is the actively selected block. 

    bat

This will select row B.  A red row will appear with all of the letters in row c. 

    zip

This will select column 'Z' and move the mouse pointer to coordinate '2 B Z'

   touch 
        
will left-click the mouse pointer.  

        
![one-bat-cap-two-bat-zip-small](https://user-images.githubusercontent.com/1163925/138029385-bcd191fa-3281-4f00-aab3-91696b095bab.gif)

# Mouse Grid Overlays
        
The Mouse Grid has 3 overlays to help remind you spot locations on the screen:
        
* `frame overlay`, the default, which puts a frame of letters around every large number block and leaves most of the screen clear,  
* `checkerboard overlay`, which puts an alternating checkerboard pattern of letters across the scren
* `full overlay`,  which puts letters on every possible coordinate. 

Each pattern has advantages and disadvantages. Full mode displays every possible coordinate.  The coordinates made visible in full mode are there in every mode.  Checkerboard mode and frame mode simply hide a lot of the labels so that it is easier to see what you are trying to point at.  
  
To activate checkers, say

    alphabet checkers
 
To activate full, say 
  
    alphabet full
  
The mouse grid comes set to frame overlay by default.  To activate frame overlay, say 
   
    alphabet frame

![alphabet-checkers-alphabet-full-alphabet-frame-small](https://user-images.githubusercontent.com/1163925/138029428-42949116-e92c-4a11-8824-46bc0b86c974.gif)

# Scale Up And Down The Whole Grid
        
To **scale up the whole grid**, say the command 
  
    bigger bowl
  
To **scale it down,** say 
    
    smaller bowl. 
        
![bigger-bowl-smaller-bowl-small](https://user-images.githubusercontent.com/1163925/138033703-a5e89c76-ed5c-45d5-b482-1e05d2f64296.gif)

# Make the Background More Transparent
  
 To **make the background more transparent**, say 
  
      thinner broth
  
 To **make the background less transparent**, say 
     
      thicker broth
  

![thicker-broth-thinner-broth-small](https://user-images.githubusercontent.com/1163925/138029866-d0453c1d-bf0d-4d40-9fef-eaaa5773d414.gif)

 # Make letter Labels More Transparent
       
 To **make the letter labels more transparent**, say 
   
    eat noodles


 To **make the letters less transparent**, say 
  
    add noodles
  

![add-noodles-eat-noodles-small](https://user-images.githubusercontent.com/1163925/138029880-0c5305e8-ab78-4b0d-a40b-aa03f8647bba.gif)
