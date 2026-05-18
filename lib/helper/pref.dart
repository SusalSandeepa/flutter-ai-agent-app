import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class Pref {
  static late Box _box;

  static Future<void> initialize() async {
    Hive.defaultDirectory = (await getApplicationDocumentsDirectory()).path;
    _box = Hive.box(name: 'myData');

    // One-time migration: clear stale onboarding flag
    if (!_box.containsKey('_onboardingMigrated')) {
      _box.delete('showOnboarding');
      _box.put('_onboardingMigrated', true);
    }
  }

  static bool get showOnboarding =>
      _box.get('showOnboarding', defaultValue: true);

  static set showOnboarding(bool val) => _box.put('showOnboarding', val);
}
