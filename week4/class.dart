void main() {
  
  // musteri adi, parasi, yasi, ...

  final int customerMoney = 50;
  final String customerName = 'batu';
  final int customerAge = 13;

  // yas 10 dan buyukse islem yapalim

  controlCustomerAge(customerMoney);


}

void controlCustomerAge(int value){
  if (value > 10) {
    print('alışveriş yapabilirsiniz.');
  }else{
      print('alışveriş yapamazsınız.');
  }


// bankaya 3 musteri gelsin, 100 tl, 0 tl ve hesabi yok.

List<int?> customerMoneys = [100, null, 0]; // ? koymak null veri gelebilir demek.

  for (var item in customerMoneys) {
    if (item != null) {
      if (item > 0) {
        print('Hoşgeldiniz beyefendi.');
      }else{
        print('Uzayınızz.!!.11.1!!');
      }
    }else{
      print('hesap açalım.');
    }
  }
  print('---------' * 10);

  int customerMoneyX = 15;
  User user1 = User('batu', 50, age: 25, city: 'Bursa');
  //User user2 = User('batu2', 30, null, null);

  final user3 = User('batu3', 66, age: 30);
  
  print(user3.userCode);
  print(user1.name);
}

int? controlMoney(int? money) {
  if (money != null && money > 0) {
    return money;
  }else{
    return null;
  }
  //if (money == null || money == 0) {
  //  return null;
  //}

}



class User {
  // ozellikleri neler
  late final String name;
  late final int money;
  late final int? age;
  late final String? city;
  
  late final String userCode;
asddsa
  late final String _id;

  User(String name, int money, {required String id, int? age, String? city}){
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
    _id = id;
    userCode = (city ?? 'ist') + name;
  }
}

class User2 {
  // ozellikleri neler
  final String name;
  final int money;
  final int? age;
  final String? city;
  
  late final String userCode;

  User2(this.name, this.money, {this.age, this.city}){
    userCode = (city ?? 'ist') + name;
  }
}