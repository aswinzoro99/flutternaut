import 'package:flutternaut_frontend_webapp/presentation/base_screen/base_screen.dart';
import 'package:get_it/get_it.dart';

final locate = GetIt.instance;

// ignore: long-method
Future<void> setupInjector() async {
  locate.registerSingleton(BaseScreen.new);
}
