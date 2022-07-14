import 'parent.dart';

class Child extends Parent {
  // Creating Child Constructor
  Child() : super("null") {
    print("INSIDE CHILD CONSTRUCTOR");
  }

  void parentInfo() {
    print(super.sayHello);
  }
}
