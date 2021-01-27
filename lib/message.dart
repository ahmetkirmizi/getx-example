import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello World',
          'count': 'Count',
        },
        'tr_TR': {
          'hello': 'Sa kardeşim',
          'count': 'Sayaç',
        }
      };
}
