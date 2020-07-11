# HW1_Bluescape

### Task

Implement a simple QML-based UI with a label and a button, similar to the one in the attached screenshot.

// Screenshot - TBD

### Requirements

- [ ] Load a list of words from file on disk.
- [ ] Main label should display a random word each time the button is clicked.
- [ ] Words should be transfered using Qt’s C++ - QML bridging support.
- [ ] Window background should tile.
- [ ] Button horizontal aligned with the window.
- [ ] Button aligned at the bottom (TBD).
- [ ] Logo aligned top-right corner from window.


### Bonus points

- [ ] Add function in Javascript to change the color of the label to a new random color when the button is clicked.
- [ ] Make the color of the text fade smoothly to the new color.
- [ ] Button scales horizontally with the window.
- [ ] Button corners should not appear stretched.

### Evaluation

We will be testing it on an unspecified OS using Qt 5.13.
I recommend sticking to qmake for the build system, but cmake is ok too if you have a preference for it.
Make sure your code builds and runs out of the box, including the loading of the sample words file.