import 'package:flutter_test/flutter_test.dart';
import 'package:know_my_city/domain/calculator/calculator.dart';

void main() {
  group('Calculator', () {
    final calculator = Calculator();

    test('Debe sumar dos números correctamente', () {
      expect(calculator.add(2, 3), equals(5));
    });

    test('Debe restar dos números correctamente', () {
      expect(calculator.subtract(5, 2), equals(3));
    });

    test('Debe multiplicar dos números correctamente', () {
      expect(calculator.multiply(4, 3), equals(12));
    });

    test('Debe dividir dos números correctamente', () {
      expect(calculator.divide(10, 2), equals(5.0));
    });

    test('Debe lanzar un error cuando se intenta dividir por cero', () {
      expect(() => calculator.divide(10, 0), throwsArgumentError);
    });
  });
}
