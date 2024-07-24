import 'package:flutternaut_frontend_webapp/presentation/bloc/root/root_bloc.dart';
import 'package:flutternaut_frontend_webapp/route/app_router.dart';
import 'package:get_it/get_it.dart';

final locate = GetIt.instance;

// ignore: long-method
Future<void> setupInjector() async {
  locate
    ..registerSingleton(AppRouter())
    ..registerSingleton(RootBloc());
}
