tag: user.full_mouse_grid_showing

-



<user.letter> <user.letter> <number>:
    user.full_grid_input_partial(number)
    user.full_grid_input_partial(letter_1)
    user.full_grid_input_partial(letter_2)
    # user.full_grid_close()

<user.letter> <user.letter> <number> {user.mg_point_of_compass}:
    user.full_grid_input_partial(number)
    user.full_grid_input_partial(letter_1)
    user.full_grid_input_partial(letter_2)

    # user.full_grid_close()

<user.letter> <user.letter> {user.mg_point_of_compass}:
    user.full_grid_input_partial(letter_1)
    user.full_grid_input_partial(letter_2)
    # user.full_grid_close()

<user.letter> <user.letter>:
    user.full_grid_input_partial(letter_1)
    user.full_grid_input_partial(letter_2)
    # user.full_grid_close()

<number> <user.letter> <user.letter>:
    user.full_grid_input_partial(number)
    user.full_grid_input_partial(letter_1)
    user.full_grid_input_partial(letter_2)
    # user.full_grid_close()

^<number>$:
    user.full_grid_input_partial(number)

^horizontal <user.letter>$:
    user.full_grid_input_horizontal(letter)

^<user.letter>$:
    user.full_grid_input_partial(letter)

alphabet close:
    user.full_grid_close()

alphabet checkers:
    user.full_grid_checkers()

alphabet frame:
    user.full_grid_frame()

alphabet full: 
   user.full_grid_full()

alphabet rulers:
    user.full_grid_rulers_toggle()

add noodles:
    user.full_grid_adjust_label_transparency(50)

eat noodles:
    user.full_grid_adjust_label_transparency(-50)

thicker broth:
    user.full_grid_adjust_bg_transparency(50)

thinner broth:
    user.full_grid_adjust_bg_transparency(-50)

bigger bowl: 
    user.full_grid_adjust_size(5)

smaller bowl: 
    user.full_grid_adjust_size(-5)

what the [heck | fuck]:
    app.notify("say alphabet close to get rid of the alphabet soup")

#touch: 
#    mouse_click(0)

#If you want to be able to say random things without remembering to put talon to sleep, uncomment this command.  However, this will make it much harder for Talon to recognize your command words, and is not recommended unless you have a specific reason to do so, such as being in a noisy environment or wanting to narrate what you are doing out loude without having to put talon to sleep every time. 
#<user.prose>: skip()
    