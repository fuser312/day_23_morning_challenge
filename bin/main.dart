// Challenge 1
// Write test cases for the given challenges

// Challenge - Conway's Game of Life
// https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life#Rules
// The Game of Life, also known simply as Life, is a cellular automaton devised
// by the British mathematician John Horton Conway in 1970.
// Write a function which performs one step of the life algorithm

List<List<bool>> gameOfLife (List<List<bool>> initialBoard) {
    List<List<bool>> nextBoard = List<List<bool>>.generate(
        initialBoard.length, (i) =>
        List.generate(initialBoard[i].length, (j) => false));
    for (int i = 0; i < initialBoard.length; i++) {
        for (int j = 0; j < initialBoard[i].length; j++) {
            if (initialBoard[i][j] == true &&
                deadOrAlive(i, j, initialBoard) < 2) {
                nextBoard[i][j] = false;
            } else if (initialBoard[i][j] == true &&
                deadOrAlive(i, j, initialBoard) == 2) {
                nextBoard[i][j] = true;
            } else if (initialBoard[i][j] == true &&
                deadOrAlive(i, j, initialBoard) == 3) {
                nextBoard[i][j] = true;
            } else if (initialBoard[i][j] == true &&
                deadOrAlive(i, j, initialBoard) > 3) {
                nextBoard[i][j] = false;
            } else if (initialBoard[i][j] == false &&
                deadOrAlive(i, j, initialBoard) == 3) {
                nextBoard[i][j] = true;
            }
        }
    }

    return nextBoard;
}

int deadOrAlive(int i, int j, List<List> board) {
    int count = 0;
        for (int offsetX = -1; offsetX < 2; offsetX++) {
            for (int offsetY = -1; offsetY < 2; offsetY++) {
                if (i + offsetX == i && j + offsetY == j) {
                } else if (i + offsetX < 0 ||
                    i + offsetX >= board.length ||
                    j + offsetY < 0 ||
                    j + offsetY >= board[i + offsetX].length) {
                } else if (board[i + offsetX][j + offsetY] == true) {
                    count++;
                }
            }
        }

    return count;
}

main() {

  print(gameOfLife([[false, false, false, false, false, false],
      [false, true, true, false, true, false],
      [false, true, true, false, false, true],
      [false, false, false, false, false, false],
      [true, true, false, false, true, true],
      [false, false, false, true, true, false]]));
}
