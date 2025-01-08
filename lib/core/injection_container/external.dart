import 'package:shared_preferences/shared_preferences.dart';
import 'package:get_it/get_it.dart' show GetIt;

final _sl = GetIt.I;

Future<void> registerExternalServices() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  _sl.registerLazySingleton<SharedPreferences>(
    () => sharedPreferences,
  );
}