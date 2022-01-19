#Dense Mouse Grid

A hands-free mouse grid by Tara Roys, timotimo, and aegis.

The Dense Mouse Grid is a completely hands-free replacement for traditional mousing. It replaces mouse movements with voice commands.  You tell the computer what grid coordinate you want to move to on the screen, and the mouse grid moves your cursor to that location.

To use this, put the folder dense_mouse_grid anywhere in the Talon user directory. This assumes that 1. you have Talon installed, and 2. you are using the knausj talon repository detailed in the [installation instructions here](https://talonvoice.com/docs/index.html#getting-started)  This script depends on having support from a phonetic alphabet and numbers scripts.  It is designed to be used along with the knausj-talon repository, but is compatable with any repository that provides the letters a-z using the <user.letters> capture and numbers using the <numbers> caputure.
        

This is the "dense mouse grid". It fills the screen with fields that can be reached with two letters and a number.

To use this, put the folder dense_mouse_grid anywhere in the talon user directory. This assumes that 1. you have Talon installed, and 2. you are using the knausj talon repository detailed in the [installation instructions here](https://talonvoice.com/docs/index.html#getting-started)

![image](https://user-images.githubusercontent.com/1163925/130808333-219a48b3-650c-4d4c-9a99-d9909011132d.png)

![Video Demonstration of Playing Dominion Using The Dense Mouse Grid](https://youtu.be/ookc134jPNQ)



# Opening and Closing The Grid: 

Use these voice commands:

* `dense grid` to show the grid. 
* `dense grid win` to put the grid over the active window
* `dense grid screen <number>` to put the grid over a different screen from the first one


By default, the grid stays up.  You can turn off the grid by saying `grid close`


# Basic usage in Frame Mode

The grid will appear in Frame Mode.  Frame Mode 'frames' each of the large numbered blocks with letters to indicate row and column.  Saying a coordinate with long pauses between each work.  

	2 Cap Bat

This will select the second block, make the large number two disappear, and remove the color overlay to show that this block is the actively selected block. `Cap` will select row C.  A red row will appear with all of the letters in row c. `Bad` This will select column 'd' and move the mouse pointer to coordinate '2 C B'

	touch will click the mouse pointer.  


It is not necessary to have pauses between the coordinates.  You can say 

	`2 Cap Drum` and it will move the mouse pointer to coordinate 2 C D, without showing all the helper graphics.  

# Changing your mind

If you have selected the wrong row, you can say 'horizontal' and then a letter, and it will move the highlighed row to that letter.  So saying 

	one 
	harp
	horizontal bat
	cap

will result in selecting coordinate 1 B C.  

# Using Just Alphabet Coordinates


When you already have a number block selected, you can simply say `bat cap` and it will select coordiante `bat cap`


# Grid Size

The Grid Size can be made bigger with the commands `bigger grid` and smaller with the command `smaller grid`.  The default size the grid has when Talon boots up can be set in dense_mouse_settings.talon by changing the number in `user.full_mouse_grid_field_size = "40"` to either a bigger or smaller number depending on what you want. 


# Other Modes

If frame mode does not suit you, there are two other modes that can be used to show the coordinates.  

`checker grid` turns on checker mode, which overlays the coordiantes in a checker pattern. This can be visually confusing, but it splits the difference between being able to immediately see the coordinate and being able to see the contents of your screen.  
`full grid` shows every possible coordinate. 
`frame grid` switches back to the default frame mode.

# Grid Visibility

The Grid can be made more transparent with the following four commands. 

`lighter background` makes the translucent background more transparent. `darker background` makes it darker. 
`lighter letters` makes the translucent letters more translucent. `darker letters` makes them more opaque and visible.

# Grid Color 

Every color in the grid is modifiable in full_mouse_settings.talon, allowing you to set the defaults to whatever is comfortable.  

The colors use 6 digit hexadecimal RGB colors.   
The transparency uses 2-digit hexadecimal numbers for an alpha channel. 
 