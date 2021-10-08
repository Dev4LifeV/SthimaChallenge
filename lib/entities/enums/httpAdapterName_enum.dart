import 'package:flutter/foundation.dart';

enum HttpAdapterNameEnum {
  http,
}

extension HttpAdapterNameEnumExt on HttpAdapterNameEnum {
  String get name => describeEnum(this);
}
