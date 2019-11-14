import "package:test/test.dart";
import 'main.dart';

void main() {
  test("test 1", () {
    expect(simplify("26/3"), equals("26/3"));
  });

  test("test 2", () {
    expect(simplify("6/3"), equals("2"));
  });

  test("test 3", () {
    expect(simplify("2/0"), equals("invalid denominator"));
  });


}