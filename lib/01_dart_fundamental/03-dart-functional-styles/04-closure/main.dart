// Suatu fungsi yang dapat mengakses variabel di dalam lexical scope-nya disebut dengan closure
void main() {
  Function closure = calculate(0);
  closure(); // Value is 1
  closure(); // Value is 2
  closure(); // Value is 3
}

Function calculate(base) {
  int count = 1;
  return () => print("Value is ${base + count++}");
}
