void main() {
  final newProduct = Product.money;

  calculateMoney();
}

void calculateMoney() {
  if (Product.money > 5) {
    print('5 tl eklendi.');
    // Product.money += 5;

    Product.incrementMoney(5);
    print(Product.money);
  }
}

class Product {
  static int money = 10;

  static void incrementMoney(int newMoney) {
    money += newMoney;
  }
}