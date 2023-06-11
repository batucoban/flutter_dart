void main() {
  List<int> moneys = [100, 110, 500, 200, 300];
  final List<int> newMoneys = [100, 110, 500, 200, 300];

  print("musteri 1 in parası: ${moneys[4]}");

  moneys.sort();
  moneys.add(15);
  moneys.insert(2, 300);
  moneys.insert(0, 5);

  print(moneys);

  // 100 tane musteri yap bunların hepsine sira ile numarasina gore 5 tl ekle

  List<double> customerMoney = List.generate(100, (index){
    return index.toDouble(); // index + 5;
  });
  print(customerMoney);

  // customers 100 30 40 60
  // 35 tl den buyuklere kredi verilebilir
  // kucuk olanlar alamaz

  List<int> moneyCustomerNews = [100, 30, 40, 60, -10];

  for (int i = 0; i < moneyCustomerNews.length; i++) {
    print("musteri parasi: ${moneyCustomerNews[i]}");
    if (moneyCustomerNews[i] > 35) {
      print("kredi alsın.");
    }else if(moneyCustomerNews[i] > 0 ){
      print("kredi belki alabilir.");
    }else{
      print("Kredi verilemez!.");
    }
  }

  List<dynamic> users = [1, 'aa', true];

  for (var item in users) {
    print(item);
  }

  List<String> userNames = ['ali', 'mehmet', 'ayse'];

  userNames.contains('veli'); // alttakinden daha verimli

  for (var item in userNames) {
    if (item == 'veli') {
      print('var.');
    }
  }
}