void main() {
  String userName = "a";

  if (userName.length > 2) {
    print('a');
  }else{
    throw userNameException();
  }
}


class userNameException implements Exception {
  @override
  String toString() {
    return 'username null girmissin bunu duzelt';
  }
}