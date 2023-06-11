void main() {
  
  // musteri geldi adi ahmet parasi 20

  Map<String, int> users = {
    'ahmet': 20,
    'mehmet': 30
  };

  print("ahmetin parasi: ${users['ahmet']}");

  for(var item in users.keys){
    print('${item} - ${users[item]}');
  }

  for (var i = 0; i < users.length; i++) {
    print('${users.keys.elementAt(i)} - ${users.values.elementAt(i)}');
  }


  // musterilerin birden fazla hesabi olarabilir.
  // ahmet 100, 300, 200
  // mehmet 30, 50
  // batu 30

  // sirayla kontrol et, 150 tlden fazla olanlara kredi hazır de.

  final Map<String, List<int>> batuBank = {
    'ahmet': [100, 300, 200]
  };

  batuBank['mehmet'] = [30, 50];
  batuBank['batu'] = [30];

  for (var item in batuBank.keys) {
    // bankanin tum elemanlari
    for (var money in batuBank[item]!) {
      // userin hesaplari
      if (money > 150) {
        print('krediniz hazir.');
        break;
      }
    }
  }

  // musterilerin hesaplarinin toplam parasi

  for (var name in batuBank.keys) {
    int result = 0;
    for (var money in batuBank[name]!) {
      result += money;
    }
    print('$name beyin toplam parasi -> $result');
  }

}