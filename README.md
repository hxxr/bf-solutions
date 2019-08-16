# bf-solutions
Solutions for [DMOJ](https://dmoj.ca/problems/) problems written in the [brainfuck](https://esolangs.org/wiki/Brainfuck) language.

Details on DMOJ's brainfuck implementation:

* 8-bit unsigned cells with wraparound (i.e. decrementing an empty cell makes it into 255)
* Input stream always ends with newline (for CCC problems and possibly other problems as well)
* Newline is LF (10)
* EOF (what happens when there are no more characters to read from input) sets the current cell to 255
* Starting cell is leftmost cell (cannot go to left of starting cell)
* Amount of cells is equal to the amount of bytes in the memory limit, as opposed to 30000 cells or 100 cells
