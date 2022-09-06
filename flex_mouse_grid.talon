tag: user.flex_mouse_grid_enabled
-

# Grid
flex grid: user.flex_grid_place_window()

flex grid screen: user.flex_grid_activate()

flex grid screen <number>: user.flex_grid_select_screen(number)

# Points
flex points: user.flex_grid_points_toggle()
points close: user.flex_grid_points_toggle()
point <user.text>: user.flex_grid_go_to_point(text_1)
# Points
map <user.letter> <user.letter> <user.text>: user.flex_grid_map_point(letter_1, letter_2, text)
unmap <user.text>: user.flex_grid_unmap_point(text)
unmap all: user.flex_grid_unmap_point("")

# General
flex close:
    user.flex_grid_deactivate()
    user.flex_grid_points_toggle()

