import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_wls_utils/flutter_wls_utils.dart';
import 'package:flutter_wls_utils/src/set_utils.dart';

void main() {
  group('StringUtils', () {
    test('isString', () {
      expect(StringUtils.isString(''), true);
      expect(StringUtils.isString(true), false);
      expect(StringUtils.isString(null), false);
    });

    test('isNotString', () {
      expect(StringUtils.isNotString(''), false);
      expect(StringUtils.isNotString(true), true);
      expect(StringUtils.isNotString(null), true);
    });

    test('isEmpty', () {
      expect(StringUtils.isEmpty(''), true);
      expect(StringUtils.isEmpty(null), true);
      expect(StringUtils.isEmpty('foo'), false);
    });

    test('isNotEmpty', () {
      expect(StringUtils.isNotEmpty(''), false);
      expect(StringUtils.isNotEmpty(null), false);
      expect(StringUtils.isNotEmpty('foo'), true);
    });

    test('isStrictEmpty', () {
      expect(StringUtils.isStrictEmpty(''), true);
      expect(StringUtils.isStrictEmpty(null), true);
      expect(StringUtils.isStrictEmpty('   '), true);
      expect(StringUtils.isStrictEmpty('\t'), true);
      expect(StringUtils.isStrictEmpty('\n'), true);
      expect(StringUtils.isStrictEmpty(' foo'), false);
    });

    test('isStrictNotEmpty', () {
      expect(StringUtils.isStrictNotEmpty(''), false);
      expect(StringUtils.isStrictNotEmpty(null), false);
      expect(StringUtils.isStrictNotEmpty('   '), false);
      expect(StringUtils.isStrictNotEmpty('\t'), false);
      expect(StringUtils.isStrictNotEmpty('\n'), false);
      expect(StringUtils.isStrictNotEmpty(' foo'), true);
    });
  });

  group('BooleanUtils', () {
    test('isTrue', () {
      expect(BoolUtils.isTrue(true), true);
      expect(BoolUtils.isTrue(false), false);
      expect(BoolUtils.isTrue('true'), false);
    });

    test('isFalse', () {
      expect(BoolUtils.isFalse(true), false);
      expect(BoolUtils.isFalse(false), true);
      expect(BoolUtils.isFalse('false'), false);
    });

    test('isTruthy', () {
      expect(BoolUtils.isTruthy(true), true);
      expect(BoolUtils.isTruthy({}), true);
      expect(BoolUtils.isTruthy([]), true);
      expect(BoolUtils.isTruthy(42), true);
      expect(BoolUtils.isTruthy("0"), true);
      expect(BoolUtils.isTruthy("false"), true);
      expect(BoolUtils.isTruthy(DateTime.now()), true);
      expect(BoolUtils.isTruthy(double.infinity), true);

      expect(BoolUtils.isTruthy(false), false);
      expect(BoolUtils.isTruthy(0), false);
      expect(BoolUtils.isTruthy(-0), false);
      expect(BoolUtils.isTruthy(''), false);
      expect(BoolUtils.isTruthy(null), false);
      expect(BoolUtils.isTruthy(double.nan), false);
    });

    test('isFalsy', () {
      expect(BoolUtils.isFalsy(true), false);
      expect(BoolUtils.isFalsy({}), false);
      expect(BoolUtils.isFalsy([]), false);
      expect(BoolUtils.isFalsy(42), false);
      expect(BoolUtils.isFalsy("0"), false);
      expect(BoolUtils.isFalsy("false"), false);
      expect(BoolUtils.isFalsy(DateTime.now()), false);
      expect(BoolUtils.isFalsy(double.infinity), false);

      expect(BoolUtils.isFalsy(false), true);
      expect(BoolUtils.isFalsy(0), true);
      expect(BoolUtils.isFalsy(-0), true);
      expect(BoolUtils.isFalsy(''), true);
      expect(BoolUtils.isFalsy(null), true);
      expect(BoolUtils.isFalsy(double.nan), true);
    });
  });

  group('SetUtils', () {
    final res = SetUtils.merge([
      {'a', 'b'},
      {'c'}
    ]);
    print(res);
  });
}
