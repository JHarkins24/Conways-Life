# Conways-Life
Conways-Life , a game of cells being cells

This game is based off of a cell automaton made in the 1970's to display the life span of your average cells and coded in ELM(I know but it was interesting). To run this game simply have your ELM.json filed installed along the path of this game and make sure to include it at the top of the game file.

The universe of the Game of Life is an infinite, two-dimensional orthogonal grid of square cells, each of which 
is in one of two possible states, alive or dead, (or populated and unpopulated, respectively). 
Every cell interacts with its eight neighbours, which are the cells that are horizontally, vertically, or diagonally adjacent. 
At each step in time, the following transitions occur:

-Any live cell with fewer than two live neighbours dies, as if by underpopulation.

-Any live cell with two or three live neighbours lives on to the next generation.

-Any live cell with more than three live neighbours dies, as if by overpopulation.

-Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.

The initial pattern constitutes the seed of the system.
The first generation is created by applying the above rules simultaneously to every cell in the seed; births and deaths occur simultaneously,
and the discrete moment at which this happens is sometimes called a tick. Each generation is a pure function of the preceding one.
The rules continue to be applied repeatedly to create further generations.
