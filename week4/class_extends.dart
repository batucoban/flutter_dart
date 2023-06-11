void main() {
  final userNormal = User('batu', 35);
  final userBank = bankUser('batu2', 135, 548);
  final userSpecial = specialUser('batu3', 466, 4546456, 30);

  userNormal.sayMoneyWithCompanyName();
  userBank.sayMoneyWithCompanyName();
  userSpecial.sayMoneyWithCompanyName();

  print(userSpecial.calculateMoney);

  
}

// hepsinin paralarini banka ismiyle gorebilsinler

abstract class IUser {
  final String name;
  final int money;

  IUser(this.name, this.money);

  void sayMoneyWithCompanyName() {
    print('$name - $money paraniz var.');
  }
}



class User extends IUser{
  final String name;
  final int money;

  User(this.name, this.money):super(name, money);
}

class bankUser extends IUser {
  final int bankingCode;

  bankUser(String name, int money, this.bankingCode):super(name, money);

}

class specialUser extends IUser {
  final int bankingCode;
  late final int _discount;

  specialUser(String name, int money, this.bankingCode, int discount):super(name, money){
    _discount = discount;
  }
  // indirimli fiyat ne?
  int get calculateMoney => money - (money ~/ _discount);
}