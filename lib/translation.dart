import 'package:get/get.dart';
import 'locales/en.dart';
import 'locales/kh.dart';

class Translation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': EnTranslation.getTranslates(),
        'km_KH': KhTranslation.getTranslates(),
      };
}
