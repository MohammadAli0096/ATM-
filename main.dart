// // create ATM System.
// import 'dart:io';

// void main() {
//   double balance = 10000.0;
//   int pin = 12345;
//   int userINPUT = int.parse(stdin.readLineSync()!);
//   bool password = true;

//   while (password == true) {
//     if (userINPUT == pin) {
//       print("----MAIN MENU---");
//       print("1: CHECK BALANCE");
//       print("2: WITHDRAW");
//       print("3: DEPOSIT");
//       print("exit");
//       int input = int.parse(stdin.readLineSync()!);
//       if (input == 1) {
//         print("YOUR BALANCE IS: $balance");
//       } else if (input == 2) {
//         int withdraw = int.parse(stdin.readLineSync()!);
//         if (withdraw < balance) {
//           balance = balance - withdraw;
//           print("YOUR BALANCE IS: $balance");
//         } else if (withdraw > balance) {
//           print("LOW BALANCE!");
//         }
//       } else if (input == 3) {
//         int deposit = int.parse(stdin.readLineSync()!);
//         balance = balance + deposit;
//         print("YOUR BALANCE IS: $balance");
//       }
//     } else {
//       print("---WRONG PIN CODE---");
//       print("PLEASE TRY AGAIM");

//     }
//   }
//   password = false;
// }
import 'dart:io'; // ye library user se input lene ke liye chahiye

// Main function — program yahan se start hota hai
void main() {
  print("Welcome to Dart ATM");

  // Pehle PIN verify karo
  if (!checkPin()) {
    print("Wrong PIN. Exiting...");
    return; // agar PIN galat hai to program yahin band ho jaye
  }

  bool running = true; // loop chalane ke liye flag

  while (running) {
    // Menu dikhao
    print("\n--- ATM Menu ---");
    print("1. Check Balance");
    print("2. Withdraw");
    print("3. Deposit");
    print("4. Exit");
    print("Choose an option: ");

    String? choice = stdin.readLineSync(); // user ka choice lo

    if (choice == "1") {
      checkBalance();
    } else if (choice == "2") {
      print("Enter amount to withdraw: ");
      double amount = double.parse(stdin.readLineSync()!);
      withdraw(amount);
    } else if (choice == "3") {
      print("Enter amount to deposit: ");
      double amount = double.parse(stdin.readLineSync()!);
      deposit(amount);
    } else if (choice == "4") {
      running = false; // loop band karo
      print("Thank you for using Dart ATM!");
    } else {
      print("Invalid option, try again.");
    }
  }
}

// Global variables — poore program mein available rahenge
double balance = 5000.0; // starting balance
int correctPin = 1234; // account ka PIN

// Function: balance dikhane ke liye
void checkBalance() {
  print("Current Balance: Rs. $balance");
}

// Function: paisay nikalne ke liye
void withdraw(double amount) {
  if (amount > balance) {
    // agar amount balance se zyada hai to error dikhao
    print("Insufficient balance!");
  } else {
    balance = balance - amount; // balance update karo
    print("Withdraw successful. New Balance: Rs. $balance");
  }
}

// Function: paisay jama karne ke liye
void deposit(double amount) {
  balance = balance + amount; // balance mein add karo
  print("Deposit successful. New Balance: Rs. $balance");
}

// Function: PIN check karne ke liye
bool checkPin() {
  print("Enter your PIN: ");
  String? input = stdin
      .readLineSync(); // user se input lo (string ke form mein)
  int enteredPin = int.parse(input!); // string ko number mein convert karo

  if (enteredPin == correctPin) {
    return true; // PIN sahi hai
  } else {
    return false; // PIN galat hai
  }
}
