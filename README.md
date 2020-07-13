# HW1_Bluescape

### Task

Implement a simple QML-based UI with a label and a button, similar to the one in the attached screenshot.

![Expected Result](https://github.com/pauligb/HW1_Bluescape/blob/master/expected.png)

### Requirements

- [x] Load a list of words from file on disk.
- [x] Main label should display a random word each time the button is clicked.
- [x] Words should be transfered using Qt’s C++ - QML bridging support.
- [x] Add main text horizontal centered.
- [x] Window background should tile.
- [x] Button horizontal aligned with the window.
- [x] Button aligned at the bottom - With a specific bottom margin.
- [x] Logo aligned top-right corner from window.


### Bonus points

- [x] Add function in Javascript to change the color of the label to a new random color when the button is clicked.
- [x] Make the color of the text fade smoothly to the new color.
- [x] Button scales horizontally with the window.
- [x] Button corners should not appear stretched.

## Considerations

- Logo does not resize, it does not look good when resizing. Even when
  keeping aspect ratio.
- Sample test files must be located in binary directory. qmake contains
  basic logic to copy the sample files to build directory.
- Did not plan how resizing should look when widht or height are really small.
  Decided to keep button height the same always and not allowing multiline for button or main text.

### Evaluation

We will be testing it on an unspecified OS using Qt 5.13.
I recommend sticking to qmake for the build system, but cmake is ok too if you have a preference for it.
Make sure your code builds and runs out of the box, including the loading of the sample words file.