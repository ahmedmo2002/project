import 'package:get/get.dart';

class MyLocale implements Translations {
  @override
  Map<String, Map<String, String>> get keys {
    return {
      'ar': {'1': 'الصفحه الرئيسيه'}
    };
  }
}
