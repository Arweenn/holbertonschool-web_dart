void main (List<String> args) {
  var n = int.tryParse(args[0]);
  if (n == null) {
    print('Invalid number');
    return;
  }
  if (n > 0) {
    print('$n is positive');
  } else if (n < 0) {
    print('$n is negative');
  } else {
    print('$n is zero');
  }
}
