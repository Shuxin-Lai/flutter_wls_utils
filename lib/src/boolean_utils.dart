import 'package:flutter_wls_utils/src/number_utils.dart';

class BoolUtils {
  static bool isBoolean(dynamic v) {
    return v is bool;
  }

  static bool isNotBoolean(dynamic v) {
    return isBoolean(v) == false;
  }

  static bool isTrue(dynamic v) {
    return v == true;
  }

  static bool isFalse(dynamic v) {
    return v == false;
  }

  static bool isTruthy(dynamic v) {
    return isFalsy(v) == false;
  }

  static bool isFalsy(dynamic v) {
    if (NumberUtil.isNumber(v)) {
      return v == 0 || (v as num).isNaN;
    }

    return v == null || v == false || v == "";
  }
}
