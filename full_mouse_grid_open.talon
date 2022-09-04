tag: user.full_mouse_grid_showing
-

<user.letter> <user.letter> <number>:
    # Say a letter to choose a row, say a second letter to choose a column, and say a number to
    # choose the numbered block.  Example: "air bat 2"
    user.full_grid_input_partial(number)
    user.full_grid_input_partial(letter_1)
    user.full_grid_input_partial(letter_2)


<user.letter> <user.letter>:
    # Using the currently selected number block, say a letter to choose a row and say a second
    # letter to choose a column. Example: "bat cap"
    user.full_grid_input_partial(letter_1)
    user.full_grid_input_partial(letter_2)


<number> <user.letter> <user.letter>:
    # Say a number to select a number block, say a letter to select a row, and say a second leter to
    # select a column. Example: "1 bat cap"
    user.full_grid_input_partial(number)
    user.full_grid_input_partial(letter_1)
    user.full_grid_input_partial(letter_2)

<number> <user.letter>:
    user.full_grid_input_partial(number)
    user.full_grid_input_partial(letter)

^<number>$:
    # Say a number to select a number block.
    user.full_grid_input_partial(number)

^horizontal <user.letter>$:
    # If you already have a row selected, saying 'horizontal' followed by a letter will select a new
    # horizontal row.
    user.full_grid_input_horizontal(letter)

^<user.letter>$:
    # Input a single letter. Depeing in where you are in the command sequence it will select either
    # a row or a column.
    user.full_grid_input_partial(letter)

[dense] grid close:
    # Close the grid.
    user.full_grid_close()

grid checker:
    # Change the overlay pattern to a checkerboard pattern.
    user.full_grid_checkers()

grid frame:
    # Change the overlay pattern to a pattern where it is overlaid with frames.
    user.full_grid_frame()

grid phonetic:
    # Provides onscreen phonetic alphabet in rows and columns to make it so one does not have to
    # remember the talon phonetic alphabet
    user.full_grid_phonetic()

grid full:
    # Change the overlay pattern to overlay the screen with every possible number-letter-letter combination
    user.full_grid_full()

grid (bigger | larger):
    # Make the grid blocks larger.
    user.full_grid_adjust_size(5)

grid smaller:
    # Make the grib blocks smaller.
    user.full_grid_adjust_size(-5)

letters darker:
    # Make the small letter labels more visible.
    user.full_grid_adjust_label_transparency(50)

letters lighter:
    # Make the small letter labels less visible.
    user.full_grid_adjust_label_transparency(-50)

background darker:
    # Make the large number blocks more visible.
    user.full_grid_adjust_bg_transparency(20)

background lighter:
    # Make the large number blocks less visible.
    user.full_grid_adjust_bg_transparency(-20)

map <user.letter> <user.letter> <user.text>:
    user.full_grid_map_location(letter_1, letter_2, text)
