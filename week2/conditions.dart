void main() {
  final int money = 15;
  String userName = "batu";

  // bool 1 veya 0, true veya false
  bool isCustomerRich = false;

  if (money > 10) {
    print("Zenginsin.");
  }else{
    print("Fakirsin.");
  }

  // müşterinin 10 tlsi vardır.
  // müşterinin 5 tl den fazla parası varsa 20 tl alınır

  int newCustomerMoney = 0;
  const int bankingCost = 5;
  const int bankingCostGeneral = 20;

  if (newCustomerMoney > bankingCost) {
    print("Hoşgeldiniz.");
    newCustomerMoney -= bankingCostGeneral;
    //print("$newCustomerMoney");
  }else if(newCustomerMoney > 0){
    print("Lütfen sıraya giriniz.");

  }else{
    print("Lütfen borcunuzu ödeyiniz.");
  }

  // bir mağazaya isim verilecek.
  // örnek isimler Ahmet, Mehmet, Batu, Kx, X

  final String ahmetCompany = "Ahmet";
  final String mehmetCompany = "Mehmet";
  final String batuCompany = "Batu";
  final String kxCompany = "Kx";
  final String xCompany = "X";

  const int companyLenght = 1;
  String results = "";

  if (ahmetCompany.length < companyLenght) {
    results += ahmetCompany;
  }
  if (mehmetCompany.length < companyLenght) {
    results += mehmetCompany;
  }
  if (batuCompany.length < companyLenght) {
    results += batuCompany;
  }
  if (kxCompany.length < companyLenght) {
    results += kxCompany;
  }
  if (xCompany.length < companyLenght) {
    results += xCompany;
  }

  if (results.length == 0) { // veya results.isEmpty
    print("Veri yok.");
  }else{
    print(results);
  }


}