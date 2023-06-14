void main() {
  final user = User(money: 5);

  user.calculateMoney((int result){
    print(user.money);
  });
  
}

typedef CalculateCallBack = void Function(int data);

class User {
  int money;
  User({
    required this.money,
  });

  void calculateMoney(CalculateCallBack onComplete) {
    money += 5;
    onComplete(money);
  }
  
}