abstract class Account {
  int _accountId;
  double _accountBalance;

  // create constructors and initialize the balance to be 0 by default;
  Account(this._accountId, [this._accountBalance = 0]);

  Account.startingBalance(this._accountId) : _accountBalance = 0;

  void setAccountId(int id) {
    _accountId = id;
  }

  int getAccountId() {
    return _accountId;
  }

  void deposit(double money) {
    _accountBalance += money;
  }

  void withdraw(double money) {
    if (money <= 0) {
      print('Amount must be greater than 0');
    } else if (_accountBalance - money >= 0) {
      // ensure that the user have available balance;
      _accountBalance -= money;
      print('successfull withdraw of $money');
    } else if (_accountBalance - money < 0) {
      print('insufficient funds');
    } else {
      print('invalid input');
    }
  }

  String getBalance() {
    return 'Current Balance is $_accountBalance';
  }
}

class UserAccount extends Account {
  UserAccount(accountId, [accountBalance = 0.0])
      : super(accountId, accountBalance);

  String displayAccountInfo() {
    return 'Your Account Id is $_accountId and your current balance is $_accountBalance';
  }
}

class Admin {
  String adminName;
  int adminId;
  Admin(this.adminName, this.adminId);

  // create a method to deduct the adminestrative fees from the user;
  void deductAdminFees(UserAccount user, double fees) {
    user._accountBalance -= fees;
  }

  UserAccount createAccount(nationalId, [initialBalance = 0.0]) {
    return UserAccount(nationalId, initialBalance);
  }
}
