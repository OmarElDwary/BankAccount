import 'account.dart';

void main() {
  Admin mainAdmin = Admin('omar', 102030); // instance of admin
  // let the admin create the account
  UserAccount user1 = mainAdmin.createAccount(12356);
  UserAccount account1 = UserAccount(901030, 500.0);
  // try deposit
  user1.deposit(10000);
  print(user1.getBalance());
  // try withdraw
  user1.withdraw(11);
  print(user1.getBalance());
  print(user1.getBalance());
  // try to withdraw more than the balance
  user1.withdraw(9990);
  print(user1.getBalance());
  // try to display the account details
  print(user1.displayAccountInfo());
  // test admin ability to deduct adminestrative fees
  mainAdmin.deductAdminFees(user1, 10);
  print(user1.getBalance());
  //test admin ability to create new user accounts
  UserAccount newUser = mainAdmin.createAccount(21234567891234);
  print(newUser.displayAccountInfo());
  // test account1
  print(account1.getAccountId());
  account1.withdraw(1000);
  print(account1.getBalance());
  account1.withdraw(0);
  print(account1.getBalance());
  print(account1.displayAccountInfo());
}
