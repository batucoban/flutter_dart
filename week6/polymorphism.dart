void main() {
  IUser user = Turk();
  user.sayName();
  user = English();
  user.sayName();
}

abstract class IUser {
  final String name;

  IUser(this.name);
  void sayName();

}

class Turk implements IUser {
  @override
  // TODO: implement name
  String get name => 'batu';

  @override
  void sayName() {
    print('merhaba hosgeldiniz $name');
  }
}

class English implements IUser {
  @override
  // TODO: implement name
  String get name => 'adam';

  @override
  void sayName() {
    print('welcome to my home $name');
  }
}