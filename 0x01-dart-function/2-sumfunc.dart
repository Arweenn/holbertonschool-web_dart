// Return the sum of a and b
int add(int a, int b) {
  return a + b;
}

// Return the subtraction of b from a
int sub(int a, int b) {
  return a - b;
}

// Return a formatted string showing the addition and subtraction of a and b
String showFunc(int a, int b) {
  int sum = add(a, b);
  int substract = sub(a, b);
  return 'Add $a + $b = $sum\nSub $a - $b = $substract';
}
