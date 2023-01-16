import 'package:flutter_wls_utils/src/list_utils.dart';

class SetUtils {
  static isSet(dynamic v) {
    return v is Set;
  }

  static isNotSet(dynamic v) {
    return isSet(v) == false;
  }

  static bool isEmpty(Set? v) {
    return v == null || v.isEmpty;
  }

  static bool isNotEmpty(Set? v) {
    return isEmpty(v) == false;
  }

  /// Merge a list of set
  /// ```dart
  /// final res = merge([{'a', 'b'}, {'c'}])
  /// print(res); // {a, b, c}
  /// ```
  static Set<T> merge<T>(List<Set<T>> sets) {
    final res = <T>{};
    if (ListUtils.isEmpty(sets)) {
      return res;
    }

    for (var i = 0; i < sets.length; i++) {
      final set = sets[i];
      res.addAll(set);
    }

    return res;
  }
}
