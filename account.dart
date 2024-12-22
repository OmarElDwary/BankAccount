abstract class Account {
  int _accountId;
  double _accountBalance;

  Account(this._accountId, [this._accountBalance = 0]);

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
    if (_accountBalance - money >= 0) {
      _accountBalance -= money;
    } else {
      print('insufficient funds');
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
