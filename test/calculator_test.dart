import 'package:flutter_test/flutter_test.dart';
import 'package:know_my_city/domain/calculator/calculator.dart';

void main() {
  group('Calculator', () {
    final calculator = Calculator();

    test('Debe sumar dos números correctamente', () {
      expect(calculator.add(5, 3), equals(8));
    });

    test('Debe restar dos números correctamente', () {
      expect(calculator.subtract(7, 2), equals(5));
    });

    test('Debe multiplicar dos números correctamente', () {
      expect(calculator.multiply(4, 4), equals(16));
    });

    test('Debe dividir dos números correctamente', () {
      expect(calculator.divide(4, 2), equals(2.0));
    });

    test('Debe lanzar un error cuando se intenta dividir por cero', () {
      expect(() => calculator.divide(4, 0), throwsArgumentError);
    });
  });
}
