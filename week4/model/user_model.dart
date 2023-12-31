class User {
  // ozellikleri neler
  late final String name;
  late final int money;
  late final int? age;
  late final String? city;
  
  late final String userCode;

  late final String _id;

  User(String name, int money, {required String id, int? age, String? city}){
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
    _id = id;
    userCode = (city ?? 'ist') + name;
  }

  bool isSpecialUser(String id){
    return _id == id;
  }
}