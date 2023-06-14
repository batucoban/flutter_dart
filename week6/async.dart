Future<void> main() async {
  print('a');
  // 5 sn bekle sonra gel musteri alma
  await Future.delayed(Duration(seconds: 2));
  print('b');


  Stream<int> bankMoneys = Stream.empty();
  bankMoneys = dataAddBankMoney(15, 3);
  bankMoneys.listen((event) { 
    print(event);
  });
}

Stream<int> dataAddBankMoney(int retryCount, int money) async* {
  int _localRetry = 0;
  await Future.delayed(Duration(seconds: 1));
  while (_localRetry < retryCount) {
    _localRetry++;
    yield money += 5;
  }
}

// bir servise istek attiniz sonradan gelecek
// matematiksel bir islem uzun surecek