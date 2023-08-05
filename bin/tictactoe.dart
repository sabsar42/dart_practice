import 'dart:math';
import 'dart:io';

void main() {
  var board = List.generate(3, (_) => List.filled(3, ' '));

  printBoard(board);

  while (true) {
    playerTurn(board);
    if (isGameFinished(board)) {
      break;
    }
    printBoard(board);

    computerTurn(board);
    if (isGameFinished(board)) {
      break;
    }
    printBoard(board);
  }
}

void printBoard(List<List<String>> board) {
  for (var row in board) {
    print(row.join('|'));
    print('-+-+-');
  }
}

bool isGameFinished(List<List<String>> board) {
  if (hasContestantWon(board, 'X')) {
    printBoard(board);
    print('Player wins!');
    return true;
  }

  if (hasContestantWon(board, 'O')) {
    printBoard(board);
    print('Computer wins!');
    return true;
  }

  if (!board.any((row) => row.contains(' '))) {
    printBoard(board);
    print('The game ended in a tie!');
    return true;
  }

  return false;
}

bool hasContestantWon(List<List<String>> board, String symbol) {
  return (board[0][0] == symbol && board[0][1] == symbol && board[0][2] == symbol) ||
      (board[1][0] == symbol && board[1][1] == symbol && board[1][2] == symbol) ||
      (board[2][0] == symbol && board[2][1] == symbol && board[2][2] == symbol) ||
      (board[0][0] == symbol && board[1][0] == symbol && board[2][0] == symbol) ||
      (board[0][1] == symbol && board[1][1] == symbol && board[2][1] == symbol) ||
      (board[0][2] == symbol && board[1][2] == symbol && board[2][2] == symbol) ||
      (board[0][0] == symbol && board[1][1] == symbol && board[2][2] == symbol) ||
      (board[0][2] == symbol && board[1][1] == symbol && board[2][0] == symbol);
}

void computerTurn(List<List<String>> board) {
  var rand = Random();
  int computerMove;
  while (true) {
    computerMove = rand.nextInt(9) + 1;
    if (isValidMove(board, computerMove.toString())) {
      break;
    }
  }
  print('Computer chose $computerMove');
  placeMove(board, computerMove.toString(), 'O');
}

bool isValidMove(List<List<String>> board, String position) {
  switch (position) {
    case '1':
      return board[0][0] == ' ';
    case '2':
      return board[0][1] == ' ';
    case '3':
      return board[0][2] == ' ';
    case '4':
      return board[1][0] == ' ';
    case '5':
      return board[1][1] == ' ';
    case '6':
      return board[1][2] == ' ';
    case '7':
      return board[2][0] == ' ';
    case '8':
      return board[2][1] == ' ';
    case '9':
      return board[2][2] == ' ';
    default:
      return false;
  }
}

void playerTurn(List<List<String>> board) {
  String userInput;
  while (true) {
    print('Where would you like to play? (1-9)');
    userInput = stdin.readLineSync()!;
    if (isValidMove(board, userInput)) {
      break;
    } else {
      print('$userInput is not a valid move.');
    }
  }
  placeMove(board, userInput, 'X');
}

void placeMove(List<List<String>> board, String position, String symbol) {
  switch (position) {
    case '1':
      board[0][0] = symbol;
      break;
    case '2':
      board[0][1] = symbol;
      break;
    case '3':
      board[0][2] = symbol;
      break;
    case '4':
      board[1][0] = symbol;
      break;
    case '5':
      board[1][1] = symbol;
      break;
    case '6':
      board[1][2] = symbol;
      break;
    case '7':
      board[2][0] = symbol;
      break;
    case '8':
      board[2][1] = symbol;
      break;
    case '9':
      board[2][2] = symbol;
      break;
    default:
      print(':(');
  }
}
