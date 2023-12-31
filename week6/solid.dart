import 'dart:io';

void main() {
  IDatabase database = SQL();
  database = Mongo();
}

class UserManager {
  String name;
  UserManager({
    required this.name,
  });
  void changeUserName(String name) {
    this.name = name;
  }
}

class UserLocalization {
  final UserManager manager;

  UserLocalization(this.manager);

  void updateNameAndLocalization() {
    manager.changeUserName('a');
    changeLocalization();
  }
  void changeLocalization() {
    print('object');
  }
}

// ---------------------------------------

class Product {
  final String name;
  final String money;

  Product(this.name, this.money);
}

class ProductCategories extends Product {
  ProductCategories(String name, String money) : super(name, money);

  final String category = ";l";
}

// -------------------------------------------

abstract class IDatabase {
  void write();
}

class SQL extends IDatabase {
  @override
  void write() {
    // TODO: implement write
  }

}

class Mongo extends IDatabase {
  @override
  void write() {
    // TODO: implement write
  }
  
}

// --------------------------------

abstract class IUserOperation with IUserLocation, IUserLang {
  void write();
  void read();
  void delete();
  
}

abstract class IUserLocation {
  void locationChange();
}

abstract class IUserLang {
  void lang();
}

// ------------------------------

abstract class ICameraManager {
  void readQR();
  
}

class DeviceCameraManager extends ICameraManager {
  final IphoneCameraRead iphoneCameraRead;

  DeviceCameraManager(this.iphoneCameraRead);
  @override
  void readQR() {
    // TODO: implement readQR
  }
  
}

class IphoneCameraRead extends ICameraManager {
  @override
  void readQR() {
    // TODO: implement readQR
  }
  
}