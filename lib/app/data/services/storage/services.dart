import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_storage/app/core/utils/keys.dart';

class StorageService extends GetxService {
  late GetStorage _box;

  Future<StorageService> init() async {
    _box = GetStorage();
    await _box.writeIfNull(LANG_KEY, 'en');
    await _box.writeIfNull(THEME_KEY, 'dark');
    return this;
  }

  // read Data from storage
  T read<T>(String key) => _box.read(key);
  // write Data to storage
  void write(String key, dynamic value) async => await _box.write(key, value);
}
