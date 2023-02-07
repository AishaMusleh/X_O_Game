import 'dart:io';
import 'cell.dart';

class Bord {
  List<Cell> bord_fill = [];
  Bord() {
    int i = 0;
    while (i < 9) {
      bord_fill.add(new Cell());
      i++;
    }
  }
  void print_bord() {
    int i = 0;
    while (i < 9) {
      stdout.write("|");
      if (bord_fill[i].New_Value == " ") {
        stdout.write(" ");
      } else if (bord_fill[i].New_Value == "X") {
        stdout.write("X");
        bord_fill[i].change_value = "X";
      } else {
        stdout.write("O");
        bord_fill[i].change_value = "O";
      }
      if ((i + 1) % 3 == 0) {
        stdout.write("|\n");
      }
      i++;
    }
  }
}