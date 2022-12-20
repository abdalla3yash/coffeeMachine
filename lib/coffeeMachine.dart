// ignore_for_file: file_names

class CoffeeMachine {
  List coffeeSizes = [1, 2, 3, 4];
  late double waterLevel, coffeeLevel;

  void turnAvailableOptionOn() {
    print("Options Available");
  }

  void turnAvailableOptionOff() {
    print("Options Is Not Available");
  }

  bool isWaterLevelEnough(int coffeeSizes) {
    if (coffeeSizes == 1 && waterLevel == 200) {
      return true;
    } else {
      return false;
    }
  }

  bool isCoffeeLevelEnough(int coffeeSizes) {
    if (coffeeSizes == 1 && coffeeLevel == 10) {
      return true;
    } else {
      return false;
    }
  }

  void warnWaterLevelLow() {
    print('Warning!!! Water Level Is Low!');
  }

  void warnCoffeeLevelLow() {
    print('Warning!!! Coffee Level Is Low!');
  }

  void makeCoffee(int coffeeSizes) {
    // turn options off
    turnAvailableOptionOff();
    if (coffeeSizes == 1) {
      var waterEnough = isWaterLevelEnough(coffeeSizes);
      var coffeEnough = isCoffeeLevelEnough(coffeeSizes);
      if (waterEnough && coffeEnough) {
        waterLevel -= 200;
        coffeeLevel -= 10;
        print("Coffee is Ready");
        turnAvailableOptionOn();
      }
    }
  }
}


/// coffee size 1 : water 200m , coffee 10gm 
/// coffee size 2 : water 300m , coffee 12gm
/// coffee size 3 : water 400m , coffee 15gm
/// coffee size 4 : water 500m , coffee 20gm
