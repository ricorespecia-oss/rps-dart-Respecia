import 'dart:io';

void main() {
  print("===== ROCK, PAPER, SCISSORS =====");

  // Player names
  stdout.write("\nHey, Enter Player 1 name: ");
  String? player1 = stdin.readLineSync();
  if (player1 == null || player1.trim().isEmpty) {
    player1 = "Player 1";
    print("(No name entered. Using \"Player 1\".)");
  }

  stdout.write("Hey, Enter Player 2 name: ");
  String? player2 = stdin.readLineSync();
  if (player2 == null || player2.trim().isEmpty) {
    player2 = "Player 2";
    print("(No name entered. Using \"Player 2\".)");
  }

  int score1 = 0;
  int score2 = 0;
  int round = 1;

  print("\n==============================");
  print("         Round: $round           ");
    print("==============================");

  while (true) {
    stdout.write("\n $player1, enter your move (rock/paper/scissors): ");
    String move1 = stdin.readLineSync()!.toLowerCase();

    for (int i = 0; i < 30; i++) {
      print(" ");
    }

    String? move2;
    while (true) {
      stdout.write("$player2, enter your move (rock/paper/scissors): ");
      move2 = stdin.readLineSync()?.toLowerCase();
      if (move2 == "rock" || move2 == "paper" || move2 == "scissors") {
        break;
      } else {
        print("Invalid move. Please type rock, paper, or scissors.");
      }
    }

    print("\n$player1 chose $move1. $player2 chose $move2.");

    // Decision time!!
    if (move1 == move2) {
      print("\nResult: It's a tie!");
    } else if ((move1 == "rock" && move2 == "scissors") ||
        (move1 == "scissors" && move2 == "paper") ||
        (move1 == "paper" && move2 == "rock")) {
      print("\nResult: $player1 wins the round!");
      score1++;
    } else {
      print("\nResult: $player2 wins the round!");
      score2++;
    }

    // e show ang scrw
    print("\n=============================================");
    print("Score :");
    print("      $player1: $score1 | $player2: $score2");
    print("=============================================");

    stdout.write("Play again? (y/n): ");
    String? again = stdin.readLineSync();
    if (again == null || again.toLowerCase() != "y") {
      break;
    }
    round++;
  }

  // Final score
  print("\n=============================================");
  print("                 FINAL SCORE                   ");
  print("\n=============================================");
  print("$player1: $score1 | $player2: $score2");
  if (score1 > score2) {
    print("Overall winner: $player1");
  } else if (score2 > score1) {
    print("Overall winner: $player2");
  } else {
    print("Overall result: It's a tie!");
  }

  
}
