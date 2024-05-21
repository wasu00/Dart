import 'dart:io';

class BankAccount {
  String number;
  String holderName;
  double balance;

  BankAccount(this.number, this.holderName, this.balance);

  void deposit(double amount) {
    balance += amount;
    print('Deposit of \$${amount.toStringAsFixed(2)} successful.');
    print('New Balance: \$${balance.toStringAsFixed(2)}');
  }

  void withdraw(double amount) {
    if (amount > balance) {
      print('Insufficient funds.');
    } else {
      balance -= amount;
      print('Withdrawal of \$${amount.toStringAsFixed(2)} successful.');
      print('New Balance: \$${balance.toStringAsFixed(2)}');
    }
  }

  void displayInfo() {
    print('Account Number: $number');
    print('Account Holder: $holderName');
    print('Balance: \$${balance.toStringAsFixed(2)}');
  }
}

void main() {
  var accounts = <String, BankAccount>{};

  while (true) {
    print('1. Create an Account');
    print('2. Deposit Money');
    print('3. Withdraw Money');
    print('4. Display Account Info');
    print('5. Exit');
    stdout.write('Select an option (1-5): ');
    var choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        createAccount(accounts);
        break;
      case '2':
        depositMoney(accounts);
        break;
      case '3':
        withdrawMoney(accounts);
        break;
      case '4':
        displayAccountInfo(accounts);
        break;
      case '5':
        print('Goodbye!');
        return;
      default:
        print('Invalid option. Please select a number between 1 and 5.');
    }
  }
}

void createAccount(Map<String, BankAccount> accounts) {
  stdout.write('Enter Account Number: ');
  var number = stdin.readLineSync();
  stdout.write('Enter Account Holder Name: ');
  var holderName = stdin.readLineSync();
  if (number != null && holderName != null) {
    var account = BankAccount(number, holderName, 0.0);
    accounts[number] = account;
    print('Account created successfully.');
  } else {
    print('Invalid input. Please try again.');
  }
}

void depositMoney(Map<String, BankAccount> accounts) {
  stdout.write('Enter Account Number: ');
  var number = stdin.readLineSync();
  if (number != null && accounts.containsKey(number)) {
    stdout.write('Enter Deposit Amount: ');
    var amountInput = stdin.readLineSync();
    if (amountInput != null) {
      var amount = double.tryParse(amountInput);
      if (amount != null && amount > 0) {
        accounts[number]!.deposit(amount);
      } else {
        print('Invalid amount. Please enter a positive number.');
      }
    } else {
      print('Invalid input. Please try again.');
    }
  } else {
    print('Account not found.');
  }
}

void withdrawMoney(Map<String, BankAccount> accounts) {
  stdout.write('Enter Account Number: ');
  var number = stdin.readLineSync();
  if (number != null && accounts.containsKey(number)) {
    stdout.write('Enter Withdrawal Amount: ');
    var amountInput = stdin.readLineSync();
    if (amountInput != null) {
      var amount = double.tryParse(amountInput);
      if (amount != null && amount > 0) {
        accounts[number]!.withdraw(amount);
      } else {
        print('Invalid amount. Please enter a positive number.');
      }
    } else {
      print('Invalid input. Please try again.');
    }
  } else {
    print('Account not found.');
  }
}

void displayAccountInfo(Map<String, BankAccount> accounts) {
  stdout.write('Enter Account Number: ');
  var number = stdin.readLineSync();
  if (number != null && accounts.containsKey(number)) {
    accounts[number]!.displayInfo();
  } else {
    print('Account not found.');
  }
}
 
