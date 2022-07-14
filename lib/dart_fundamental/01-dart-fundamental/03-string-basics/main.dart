void main() {
  String greeting = 'HELLO';
  String greetingTwo = "WORLD";

  print(greeting[0]); // H
  print(greeting.length); // 5
  print(greeting.toLowerCase()); // hello
  print(greeting.indexOf("O")); // 4
  print(greeting.contains('E')); // true (boolean)
  print(greeting + ' ' + greetingTwo); // Concat
  print(
      "The greeting is: ${greeting} and ${greetingTwo}"); // interpolate, string literals
}
