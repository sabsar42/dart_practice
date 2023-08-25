abstract class Account {
  int accountNumber;
  double balance;

  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
    print('Deposited Amount is : $amount');
  }

  void withdraw(double amount);
}

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(int accountNumber, double balance, this.interestRate)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if(amount>balance)print('Insufficient Withdrawal Amount');
    balance -= amount;
    double interestBalance = balance * (interestRate / 100);
    balance += interestBalance;
    print('Withdrawn from SavingsAccount is : $amount');
  }
}

class CurrentAccount extends Account {
  double overdraftLimit;
  CurrentAccount(int accountNumber, double balance, this.overdraftLimit)
      : super(accountNumber, balance);
  @override
  void withdraw(double amount) {
    if (amount <= overdraftLimit + balance) {
      print('Withdrawn from CurrentAccount is : $amount');
      balance -= amount;
    } else {
      print("Insufficient funds.");
    }
  }
}

void main() {
  SavingsAccount savingsAccount = SavingsAccount(1001, 25000, 2.5);
  savingsAccount.deposit(15000);
  savingsAccount.withdraw(5000);
  print('SavingsAccount Balance is : ${savingsAccount.balance}');

  CurrentAccount currentAccount = CurrentAccount(1001, 65000, 15000);
  currentAccount.deposit(50000);
  currentAccount.withdraw(400);
  print('CurentAccount Balance is : ${currentAccount.balance}');
}
