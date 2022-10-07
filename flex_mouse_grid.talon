-

# Grid
flex grid: user.flex_grid_place_window()
flex grid screen: user.flex_grid_activate()
flex grid screen <number>: user.flex_grid_select_screen(number)
[flex] grid close:
    user.flex_grid_deactivate()
    user.flex_grid_points_toggle(0)

# Points
flex points: user.flex_grid_points_toggle(1)
points close: user.flex_grid_points_toggle(0)
point <user.word> [<number>]: user.flex_grid_go_to_point(word, number or 1)

# Points mapping
remap:
    user.flex_grid_place_window()
    user.flex_grid_points_toggle(1)
map <user.word> <user.letter>+: user.flex_grid_map_point(word, letter_list)
unmap <user.word>: user.flex_grid_unmap_point(word)
unmap all: user.flex_grid_unmap_point("")
