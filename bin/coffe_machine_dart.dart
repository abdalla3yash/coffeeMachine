import 'package:coffe_machine_dart/coffeeMachine.dart';

void main(List<String> arguments) {
  var machine1 = CoffeeMachine();
  machine1.fakeWaterAdd(200);
  machine1.fakeCoffeeAdd(16);
  machine1.makeCoffee(1);
}
