import 'package:flutter/cupertino.dart';

class CounterViewModel extends ChangeNotifier {
  int count = 0;
  increment(){
    notifyListeners(); //UI ni o'zgartirishini aytadi agar yozilmasa UI da hech narsa o'zgarmaydi
    count++;
  }

  decrement(){
    notifyListeners(); //UI ni o'zgartirishini aytadi agar yozilmasa UI da hech narsa o'zgarmaydi
    count--;
  }
}