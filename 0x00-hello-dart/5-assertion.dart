import 'dart:core';

void main(List<String> args) {
  final int? n = int.tryParse(args[0]);
  assert(n != null, 'Invalid number');
  assert(n! >= 80, 'The score must be greater than 80');
  print('You Passed');
}


// assert(n > 80, 'You passed');
// assert(n == 80, 'You passed');
// assert(n < 80, 'The score must be greater than 80');