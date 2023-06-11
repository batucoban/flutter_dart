void main() {
  // değişkeni değiştirilemez yapmak için final ve const
  final String userName = "batu";
  const String bankName = "batuBank";
  var userName2 = 'batu2';

  final int bankMoney = 100;

  // bank name = "batuBank"
  // bank user 1 = "bank1musteri"
  // bank user 1 in parasi 100.00

  // yeni bir musteri gelecek adi bank2musteri
  // yeni bankaya gelenden bu bank user1 parasini cikartip ekrana gosterelim.

  const String bankNameSpecial = "batuBank";
  const String user1 = "Bank 1 musteri";
  const double user1Money = 100.00;

  const String user2 = "Bank 2 musteri";
  int user2Money = 500;

  user2Money = user2Money - user1Money.toInt();

  print("User 2 money: $user2Money");

}