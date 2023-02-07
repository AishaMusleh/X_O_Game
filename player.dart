import 'dart:io';

class Player {
  bool x_turn = true;
  Player() {
    if (x_turn) {
      print("X turn");
    } else {
      print("O turn");
    }
  }
  int getinput() {
    print("chosse your place :");
    int input = int.parse(stdin.readLineSync()!);
    while (!(input > 0 && input <= 9)) {
      print("your chosse place is wrong plase enter again:");
      input = int.parse(stdin.readLineSync()!);
    }
    return input;
  }
}