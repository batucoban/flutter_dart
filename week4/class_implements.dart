void main() {
  
}

abstract class IStudent {
  final String name;
  final int age;

  IStudent(this.name, this.age);
}

class Student implements IStudent {
  @override
  // TODO: implement age
  int get age => throw UnimplementedError();

  @override
  // TODO: implement name
  String get name => throw UnimplementedError();
}

class Student2 {
  final String name;
  final int age;

  Student2(this.name, this.age);
}