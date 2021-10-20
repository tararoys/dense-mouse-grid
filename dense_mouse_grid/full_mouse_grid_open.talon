tag: user.full_mouse_grid_showing

-



<user.letter> <user.letter> <number>:
    user.full_grid_input_partial(number)
    user.full_grid_input_partial(letter_1)
    user.full_grid_input_partial(letter_2)


<user.letter> <user.letter>:
    user.full_grid_input_partial(letter_1)
    user.full_grid_input_partial(letter_2)


<number> <user.letter> <user.letter>:
    user.full_grid_input_partial(number)
    user.full_grid_input_partial(letter_1)
    user.full_grid_input_partial(letter_2)


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



# alphabet rulers:
#    user.full_grid_rulers_toggle()

#<user.letter> <user.letter> <number> #{user.mg_point_of_compass}:
#    user.full_grid_input_partial(number)
#    user.full_grid_input_partial(letter_1)
#    user.full_grid_input_partial(letter_2)

    # user.full_grid_close()

#<user.letter> <user.letter> {user.mg_point_of_compass}:
#    user.full_grid_input_partial(letter_1)
#    user.full_grid_input_partial(letter_2)
#    user.full_grid_close()

