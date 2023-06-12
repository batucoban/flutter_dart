void main() {
  final model = CarModel(category: CarModels.bmw, name: 'bmw x5', money: 1500, isSecondHand: false);

  final carItems = [
    CarModel(category: CarModels.bmw, name: 'bmw x5', money: 1500, isSecondHand: false),
    CarModel(category: CarModels.toyota, name: 'tyt a2', money: 200),
    CarModel(category: CarModels.yamaha, name: 'ymh 31', money: 800),
    CarModel(category: CarModels.bmw, name: 'bmw x6', money: 2000, isSecondHand: false),
    CarModel(category: CarModels.toyota, name: 'tyt a3', money: 1000, isSecondHand: false)
  ];


  final resultCount = carItems.where((element) => element.isSecondHand == true).length; // kac tane ikinci el var sayar.
  print(resultCount);

  final newCar = CarModel(category: CarModels.bmw, name: 'bmw x5', money: 1500, isSecondHand: false);

  final isHaveCar = carItems.contains(newCar);
  if (isHaveCar) {
    print('Bu araba bizde var almayalim.');
  }else{
    print('Bu araba bizde yok alalim.');
  }

  final resultBmwMore20 = carItems.where((element){
    return element.category == CarModels.bmw && element.money > 20;
  }).join(', ');

  print(resultBmwMore20);

  final carNames = carItems.map((e) => e.name).join(', ');

  print(carNames);

  try {
    final mercedesCar = carItems.singleWhere((element) => element.category == CarModels.mercedes);
    print(mercedesCar.name);
  } catch (e) {
    print('bu araba yok.');
  }

}

// arabalar sinifi olacak
// arabalarin modeli, ismi, parasi kesin olacak sehri olmayacak, ikinci el durumu musteri soylemezse
// her urun ikinci el kabul edilecek

// bes tane arabam olacak.

// bu arabalarin kac tanesi ikinci el

// yeni araba geldi bu bizde var mi ?

// bana bmw olan ve money si 20 den buyuk arabalarin ismini soyle

// sadece isimleri yan yana goster

// elimde mercedes var mi ?

class CarModel {
  final CarModels category;
  final String name;
  final double money;
  String? city;
  bool isSecondHand;

  CarModel({
    required this.category,
    required this.name,
    required this.money,
    this.city,
    this.isSecondHand = true
  });

  @override
  bool operator ==(Object other){
    if (identical(this, other)) return true;
    
    return other is CarModel &&
      other.category == category &&
      other.name == name &&
      other.money == money &&
      other.city == city &&
      other.isSecondHand == isSecondHand;
  }

  @override
  String toString() {
    return '$name - $money';
  }
}

enum CarModels{ bmw, yamaha, toyota, mercedes }