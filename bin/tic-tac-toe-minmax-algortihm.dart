// import 'dart:io';
//
// // The game board
// List<String> board;
// int boardSize = 3; // Default board size is 3x3
//
// // Available moves on the board
// List<int> availableMoves;
//
// void main() {
//   print('Tic Tac Toe with Minimax Algorithm\n');
//   print('Enter the board size (3 for 3x3, 4 for 4x4, etc.): ');
//   int size = int.parse(stdin.readLineSync() ?? '3');
//   if (size < 3) {
//     print('Invalid board size. The minimum size is 3x3.');
//     return;
//   }
//
//   boardSize = size;
//   board = List.filled(boardSize * boardSize, ' ');
//   availableMoves = List.generate(boardSize * boardSize, (index) => index);
//
//   printBoard();
//
//   while (true) {
//     // Player's move
//     int playerMove = getPlayerMove();
//     board[playerMove] = 'X';
//     availableMoves.remove(playerMove);
//     printBoard();
//
//     // Check for player's win
//     if (checkWin('X')) {
//       print('Congratulations! You win!');
//       break;
//     }
//
//     // Check for a draw
//     if (availableMoves.isEmpty) {
//       print('It\'s a draw!');
//       break;
//     }
//
//     // AI's move using Minimax
//     int aiMove = getAIMove();
//     board[aiMove] = 'O';
//     availableMoves.remove(aiMove);
//     printBoard();
//
//     // Check for AI's win
//     if (checkWin('O')) {
//       print('Sorry, AI wins!');
//       break;
//     }
//   }
// }
//
// int getPlayerMove() {
//   int move;
//   while (true) {
//     stdout.write('Enter your move (0-${boardSize * boardSize - 1}): ');
//     String? input = stdin.readLineSync();
//     move = int.tryParse(input ?? '')!;
//     if (move != null && availableMoves.contains(move)) {
//       break;
//     }
//     print('Invalid move. Try again.');
//   }
//   return move;
// }
//
// int getAIMove() {
//   int bestScore = -1000;
//   int bestMove = -1;
//
//   for (int move in availableMoves) {
//     board[move] = 'O';
//     int score = minimax(board, false);
//     board[move] = ' ';
//
//     if (score > bestScore) {
//       bestScore = score;
//       bestMove = move;
//     }
//   }
//
//   return bestMove;
// }
//
// int minimax(List<String> board, bool isMaximizing) {
//   String aiPlayer = isMaximizing ? 'O' : 'X';
//
//   if (checkWin('X')) return -10;
//   if (checkWin('O')) return 10;
//   if (availableMoves.isEmpty) return 0;
//
//   int bestScore = isMaximizing ? -1000 : 1000;
//
//   for (int move in availableMoves) {
//     board[move] = aiPlayer;
//
//     if (isMaximizing) {
//       int score = minimax(board, false);
//       bestScore = score > bestScore ? score : bestScore;
//     } else {
//       int score = minimax(board, true);
//       bestScore = score < bestScore ? score : bestScore;
//     }
//
//     board[move] = ' ';
//   }
//
//   return bestScore;
// }
//
// bool checkWin(String player) {
//   List<List<int>> winPatterns = [];
//   // Rows
//   for (int i = 0; i < boardSize; i++) {
//     winPatterns.add(List.generate(boardSize, (index) => i * boardSize + index));
//   }
//   // Columns
//   for (int i = 0; i < boardSize; i++) {
//     winPatterns.add(List.generate(boardSize, (index) => i + index * boardSize));
//   }
//   // Diagonals
//   winPatterns.add(List.generate(boardSize, (index) => index * (boardSize + 1)));
//   winPatterns.add(List.generate(boardSize, (index) => (index + 1) * (boardSize - 1)));
//
//   for (List<int> pattern in winPatterns) {
//     if (pattern.every((index) => board[index] == player)) {
//       return true;
//     }
//   }
//   return false;
// }
//
// void printBoard() {
//   print('');
//   for (int i = 0; i < boardSize; i++) {
//     for (int j = 0; j < boardSize; j++) {
//       stdout.write('${board[i * boardSize + j]}');
//       if (j < boardSize - 1) stdout.write(' | ');
//     }
//     print('');
//     if (i < boardSize - 1) {
//       for (int j = 0; j < boardSize; j++) {
//         stdout.write('---');
//         if (j < boardSize - 1) stdout.write('|');
//       }
//       print('');
//     }
//   }
//   print('');
// }
