import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';

final sl = GetIt.instance;

@InjectableInit(preferRelativeImports: true)
Future<void> serviceLocator() async {
  await sl.init();
}
