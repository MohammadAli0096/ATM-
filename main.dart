// create ATM System.
import 'dart:async';
import 'dart:io';

void main() {
  double balance = 10000.0;
  int pin = 12345;
  print("---INTER YOUR PIN---");

  int userINPUT = int.parse(stdin.readLineSync()!);
  bool password = true;
  if (userINPUT == pin) {
    while (password == true) {
      if (userINPUT == pin) {
        print("----MAIN MENU---");
        print("1: CHECK BALANCE");
        print("2: WITHDRAW");
        print("3: DEPOSIT");
        print("4: MONEY TRANSFER");
        print("5: EXIT");
        int input = int.parse(stdin.readLineSync()!);
        if (input == 1) {
          print("YOUR BALANCE IS: $balance");
        } else if (input == 2) {
          print("---WITHDRAW AMOUNT---");
          int withdraw = int.parse(stdin.readLineSync()!);
          if (withdraw < balance) {
            balance = balance - withdraw;
            print("YOUR BALANCE IS: $balance");
          } else if (withdraw > balance) {
            print("LOW BALANCE!");
          }
        } else if (input == 3) {
          print("---DEPOSIT AMOUNT---");
          int deposit = int.parse(stdin.readLineSync()!);
          balance = balance + deposit;
          print("YOUR BALANCE IS: $balance");
        } else if (input == 4) {
          print("SELECT YOUR BANK");
          print("1: ABC BANK");
          print("2: XYZ BANK");
          print("3; ABC ISLAMIC BANK");
          print("4: XYZ ISLAMIC BANK");
          if (input==1) {
            
          }
        } else if (input == 5) {
          print("---THANK YOU FOR USING ATM😊😊---");
          password = false;
        }
      }
    }
  } else {
    print("---WRONG PIN CODE---");
    print("  PLEASE TRY AGAIM");
  }
}
