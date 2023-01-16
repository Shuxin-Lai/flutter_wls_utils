import 'dart:convert';

class SerializeUtil {
  static String stringify(dynamic v, {String defaultVal = ''}) {
    if (v == null) {
      return defaultVal;
    }

    return v.toString();
  }
}
