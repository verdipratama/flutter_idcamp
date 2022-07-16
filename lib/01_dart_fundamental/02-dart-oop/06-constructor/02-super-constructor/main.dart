import 'lib/person.dart';
import 'lib/smart_student.dart';
import 'lib/student.dart';

void main() {
  Person p = Person();
  Student s = Student();
  Person ps = Person(name: 'HOWDY', age: 29);

  SmartStudent sm = SmartStudent();

  p.name = 'BUDDY';
  p.age = 20;

  s.name = 'FERDI PRATAMA';
  s.age = 30;

  print(p.name);
  print(p.age);
  print(s.name);
  print(s.age);
  print(ps.name);
  print(sm.name);
}
