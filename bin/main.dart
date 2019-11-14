// Challenge
// Simplified Fractions
// Create a function that returns the simplified version of a fraction.
/// Examples
//  simplify("4/6") ➞ "2/3"
import 'dart:math';

simplify(String fraction) {
  int numerator = int.parse(fraction.split('/')[0]);
  int denominator = int.parse(fraction.split('/')[1]);
  if(denominator == 0){
    return "invalid denominator";
  }
  int gcd = numerator.gcd(denominator);

  return (denominator ~/ gcd).toString() != "1"
      ? ('${(numerator ~/ gcd).toString()}/${(denominator ~/ gcd).toString()}')
      : '${(numerator ~/ gcd).toString()}';
}

main() {
  print(simplify("4/0"));
}
