// create ATM System.
import 'dart:io';

void main() {
  double balance = 10000.0;
  int pin = 12345;
  int userINPUT = int.parse(stdin.readLineSync()!);
  bool password = true;

  while (password == true) {
    if (userINPUT == pin) {
      print("----MAIN MENU---");
      print("1: CHECK BALANCE");
      print("2: WITHDRAW");
      print("3: DEPOSIT");
      print("exit");
      int input = int.parse(stdin.readLineSync()!);
      if (input == 1) {
        print("YOUR BALANCE IS: $balance");
      } else if (input == 2) {
        int withdraw = int.parse(stdin.readLineSync()!);
        if (withdraw < balance) {
          balance = balance - withdraw;
          print("YOUR BALANCE IS: $balance");
        } else if (withdraw > balance) {
          print("LOW BALANCE!");
        }
      } else if (input == 3) {
        int deposit = int.parse(stdin.readLineSync()!);
        balance = balance + deposit;
        print("YOUR BALANCE IS: $balance");
      }
    } else {
      print("---WRONG PIN CODE---");
      print("PLEASE TRY AGAIM");

    }
  }
  password = false;
}

