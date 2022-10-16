# Flex Mouse Grid

A hands-free mouse grid by Ben Rollin, Tara Roys, timotimo, and aegis, for use with the [Talon voice framework](https://talonvoice.com/). Flex Mouse Grid is just the latest in a series of iterations, and was built on top of [Dense Mouse Grid](https://github.com/tararoys/dense-mouse-grid).

You can think of Flex Mouse Grid as extending the functionality of Dense Mouse Grid, attempting to be an all-in-one voice mouse tool. Some notable differences from Dense Mouse Grid:

- "Points" mapping. Essentially incorporating Andrew Dant's awesome [screen-spots](https://github.com/AndrewDant/screen-spots) tool and adding a light UI. It allows points to be saved on an application-specific basis with a custom name. Example: `point click continue` to click a saved point called "continue".
- "Box" detection. Use image processing techniques to detect boxes on the screen, identifying them and allowing you to click them. You can also save boxes as points. Example: `boxes` to identify all boxes on the screen, `box click seven` to click the box labeled "7".

## Installation

1. Install the [Talon voice framework](https://talonvoice.com/docs/index.html#getting-started).
1. Clone the [knausj-talon](https://github.com/knausj85/knausj_talon) repository into your Talon user directory. This tool is designed to be used along with the knausj-talon repository, but is compatible with any repository that provides the letters a-z using the `<user.letters>` capture and numbers using the `<numbers>` capture.
1. Clone this repository into your Talon user directory.
1. Install the python dependencies. Assuming the default install location on a Mac, run these commands:

```
~/.talon/bin/pip install opencv-python-headless
~/.talon/bin/pip install numpy
```

5. Restart Talon.

## Dense Mouse Grid details

The Dense Mouse Grid is a completely hands-free replacement for traditional mousing. It replaces mouse movements with voice commands. You tell the computer what grid coordinate you want to move to on the screen, and the mouse grid moves your cursor to that location.

This is the "dense mouse grid". It fills the screen with fields that can be reached with a number and two letters.

![image](https://user-images.githubusercontent.com/1163925/130808333-219a48b3-650c-4d4c-9a99-d9909011132d.png)

![Video Demonstration of the Dense Mouse Grid](https://youtu.be/d-1BTl72M_s)

### Opening and closing the grid

- `flex grid` to show the grid. It is displayed over the active window by default
- `flex grid screen` to put the grid over the whole screen
- `flex grid screen <number>` to put the grid over a different screen
- `grid close` to close the grid

### Basic usage in frame mode

The grid will appear in Frame Mode by default. Say:

`cap bat`

This will move the cursor to row "c" and column "b". You can include a number to move the cursor to another block (`3 drum wax`). To click, use whatever voice command you have associated with clicking. By default in knausj_talon, this is `touch`.

### Changing your mind

If you have selected the wrong number, you can choose a different number anytime. If you have selected the wrong row, you can say 'row' and then a letter, and it will move the highlighed row to that letter. So saying

- `one`
- `harp`
- `row bat`
- `cap`

will result in moving the cursor to coordinate 1 B C.

### Grid size

- `grid bigger`
- `grid smaller`

You can adjust the size by a smaller amount by including `bump`, e.g. `grid bigger bump`. The default size of the grid can be set in `flex_mouse_settings.talon` by changing the number in `user.flex_mouse_grid_field_size = "30"`.

### More modes

If frame mode does not suit you, there are two other modes that can be used to show the coordinates.

- `grid checker` turns on checker mode, which overlays the coordiantes in a checker pattern. This can be visually confusing, but it splits the difference between being able to immediately see the coordinate and being able to see the contents of your screen.
- `grid full` shows every possible coordinate.
- `grid phonetic` switch to phonetic mode, which is just like frame mode except with full phonetic words labeling the rows and columns instead of individual letters.
- `grid frame` switches to frame mode (the default).

### Grid visibility

The grid can be made more or less transparent with the following commands.

- `background lighter`
- `background darker`
- `letters lighter`
- `letters darker`

You can also include the word `bump` to adjust the value by a smaller amount. For instance, `background darker bump`.

### Grid color

Every color in the grid is modifiable in flex_mouse_settings.talon, allowing you to set the defaults to whatever is comfortable.

The colors use 6 digit hexadecimal RGB colors.
The transparency uses 2-digit hexadecimal numbers for an alpha channel.
