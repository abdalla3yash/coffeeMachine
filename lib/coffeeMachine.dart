// ignore_for_file: file_names, non_constant_identifier_names

class CoffeeMachine {
  final COFFEE_SIZE_SMALL = 1;
  List coffeeSizes = [1, 2, 3, 4];
  late double waterLevel = 0, coffeeLevel = 0;

  void turnAvailableOptionOn() {
    print("Options Available");
  }

  void turnAvailableOptionOff() {
    print("Options Is Not Available");
  }

  void fakeWaterAdd(double water) {
    waterLevel += water;
  }

  void fakeCoffeeAdd(double coffee) {
    coffeeLevel += coffee;
  }

  bool isWaterLevelEnough(int coffeeSizes) {
    if (coffeeSizes == COFFEE_SIZE_SMALL && waterLevel >= 200) {
      return true;
    } else {
      return false;
    }
  }

  bool isCoffeeLevelEnough(int coffeeSizes) {
    if (coffeeSizes == COFFEE_SIZE_SMALL && coffeeLevel >= 10) {
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
    if (coffeeSizes == COFFEE_SIZE_SMALL) {
      var waterEnough = isWaterLevelEnough(coffeeSizes);
      var coffeEnough = isCoffeeLevelEnough(coffeeSizes);
      if (waterEnough && coffeEnough) {
        waterLevel -= 200;
        coffeeLevel -= 10;
        print("Coffee is Ready");
        turnAvailableOptionOn();
      } else {
        print('Water or coffee levels are not enough');
      }
    }
  }
}


/// coffee size 1 : water 200m , coffee 10gm 
/// coffee size 2 : water 300m , coffee 12gm
/// coffee size 3 : water 400m , coffee 15gm
/// coffee size 4 : water 500m , coffee 20gm
