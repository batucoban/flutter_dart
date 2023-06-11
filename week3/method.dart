void main() {

  // musterinin parası var mi yok mu

  final int userMoney = 0;
  controlUserMoney(userMoney, 0);

  //if (userMoney > 0) {
  //  print("parasi var.");
  //}else{
  //  print("parasi yok.");
  //}

  // yeni musteri onada bak

  final int user2Money = 5;
  controlUserMoney(user2Money, 5);

  //if (user2Money > 0) {
  //  print("parasi var.");
  //}else{
  //  print("parasi yok.");
  //}

  // yeni musterinin 500 tl si var ve dolara çeviriyor.

  final int newUserMoney = 500;
  
  print(newUserMoney / 22);

  int result = convertToDollar(newUserMoney, 3);

  final newResult = convertToStandartDollar(150, dollarIndex: 20);
  final newResult2 = convertToStandartDollar(300);
  final newResult3 = convertToEuro(200);

}

void controlUserMoney(int money, int minimumValue){
  if (money > minimumValue) {
    print("para var.");
  }else{
    print("para yok.");
  }
}

int convertToDollar(int userMoney, int dollarIndex){
  return userMoney ~/ dollarIndex;
}

int convertToStandartDollar(int userMoney, {int dollarIndex = 22}){
  return userMoney ~/ dollarIndex;
}

int convertToEuro(int userMoney, {int dollarIndex = 22}){
  return userMoney ~/ dollarIndex;
}