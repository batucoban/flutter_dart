void main() {
  
  final user = _User('batu', '156', age: 20);

  // 18 den kucuk kontrolu

  //if ((user.age ?? 10) < 18) {}

  if (user.age is int) {
    if (user.age! < 18) {
      print('18 den kucuk');
      user.updateMoneyWithString("TR");
    }else{
      user.updateMoneyWithNumber(15);
    }
  }

  // kullanici parasi var ama tipi degisken olabilir.
  // parametresi isimde olur degerde olur
  // ya TR yazcak yada 15
  // ekranda goster

  final _newType = user.moneyType is String ? (user.moneyType as String) : "";

  print(_newType + "A");

  int money1 = 50;
  int money2 = 50;

  print(money1 == money2);

  final moneyBank1 = Bank(40, '12');
  final moneyBank2 = Bank(50, '12');

  print(moneyBank1 == moneyBank2);

  // banka sinifindan iki kisinin parasini topla

  print(moneyBank1 + moneyBank2);

  // musterilerin idsi ayni olanlar ayni musteri olmalidir.

  print(moneyBank1 == moneyBank2);

  // diger bankadan modul aldik ekleyip musteri parasi sorgula

  // adamin parasina 10 tl ekle ekrana dondur, adamin idsini 1 artir, ismini degistir.

  moneyBank1.money += 10;
  print(moneyBank1.money);

  moneyBank1
    ..money += 10
    ..updateName('veli');

    print(moneyBank1);


}

class _User {
  final String name;
  final String id;
  int? age;

  dynamic moneyType;

  _User(this.name, this.id,{this.age});

  void updateMoneyWithString(String data) {
    moneyType = data;
  }

  void updateMoneyWithNumber(int number) {
    moneyType = number;
  }
}

class Bank with BankMixin {
  int money;
  final String id;
  String? name;

  Bank(this.money, this.id);

  int operator +(Bank newBank){
    return this.money + newBank.money;
  }

  void updateName(String name) {
    this.name = name;
  }

  @override
  String toString() {
    return super.toString();
  }

  bool operator ==(Object object){
    return object is Bank && object.id == id;
  }
  
  @override
  void sayBankHello() {}

}

mixin BankMixin {
  void sayBankHello();
  void calculateMoney(int money) {
    print('money');
  }
}