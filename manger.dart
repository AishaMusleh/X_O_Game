import 'bord.dart';
import 'player.dart';

class manger_game {
  bool game_running = true;
  bool xTurn = true;
  Bord bord = new Bord();
  Player player = new Player();

  manger_game() {
    print("welcom to tic tac tow game");
    Game_Running();
  }

  void Game_Running() {
    while (game_running) {
      bord.print_bord();
      if (Check_Is_Finish("X") || Check_Is_Finish("O") || gameisfull()) {
        game_running = false;
        break;
      }
      int input = player.getinput();
      while (bord.bord_fill[input - 1].New_Value != " ") {
        if (xTurn) {
          print("X turn");
        } else {
          print("O turn");
        }
        input = player.getinput();
      }
      if (xTurn) {
        bord.bord_fill[input - 1].change_value = "X";
      } else {
        bord.bord_fill[input - 1].change_value = "O";
      }
      xTurn = !xTurn;
    }
    if (Check_Is_Finish("X")) {
      print("X won ");
    } else if (Check_Is_Finish("O")) {
      print("O won ");
    } else {
      print("equal");
    }
  }

  bool Check_Is_Finish(String c) {
    int i = 0;
    while (i < 3) {
      if (bord.bord_fill[i * 3 + 0].New_Value == c &&
          bord.bord_fill[i * 3 + 1].New_Value == c &&
          bord.bord_fill[i * 3 + 2].New_Value == c) {
        return true;
      }
      if (bord.bord_fill[i + 0].New_Value == c &&
          bord.bord_fill[i + 3].New_Value == c &&
          bord.bord_fill[i + 6].New_Value == c) {
        return true;
      }
      i++;
    }
    if (bord.bord_fill[0].New_Value == c &&
        bord.bord_fill[4].New_Value == c &&
        bord.bord_fill[8].New_Value == c) {
      return true;
    }
    if (bord.bord_fill[2].New_Value == c &&
        bord.bord_fill[4].New_Value == c &&
        bord.bord_fill[6].New_Value == c) {
      return true;
    }
    return false;
  }

  bool gameisfull() {
    int i = 0;
    while (i < bord.bord_fill.length) {
      if (bord.bord_fill[i++].New_Value == " ") {
        return false;
      }
    }
    return true;
  }
}
