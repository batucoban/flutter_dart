void main() {
  final int classDegree = 5;
  bool isSuccess = false;

  switch(classDegree){
    case 2:
    print("Bravo");
    isSuccess = true;
    break;
    case 1:
    print("Olur");
    isSuccess = true;
    break;
    case 0:
    print("Yeterli");
    isSuccess = true;
    break;
    default:
    print("Başarısız");
    isSuccess = false;
  }

  print("Çocuğunuzun durumu: $isSuccess");

}