import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello',
        },
        'si_SL': {'hello': 'ආයුබෝවන්'},
        'fr_FR': {
          'hello': 'Bonjour',
        }
      };
}
