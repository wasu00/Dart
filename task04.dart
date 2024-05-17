//second file is  private.dart
library privete;

class A {
  var _avar = 10;  // Making the variable private by adding an underscore

  void display() {
    print('Total is = $_avar');
  }
}


// file one is test.dart
import 'private.dart';

void main() {
  var obj = A();
  obj.display();  // Corrected variable name to obj
}

