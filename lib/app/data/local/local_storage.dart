import 'package:get_storage/get_storage.dart';

class LocalStorage {
  final box = GetStorage();

  String token = 'token';
  String is_new = 'isNew';

  setToken(String value) {
    box.write(token, value);
  }

  String? getToken() {
    return box.read(token);
  }

  bool getIsNew() {
    return box.read(is_new) ?? true;
  }

  setIsNew(bool value) {
    box.write(is_new, value);
  }
}
