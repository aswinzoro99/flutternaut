import 'package:flutternaut_frontend_webapp/presentation/bloc/root/root_bloc.dart';
import 'package:flutternaut_frontend_webapp/route/app_router.dart';
import 'package:flutternaut_frontend_webapp/utils/dialog_manager.dart';
import 'package:get_it/get_it.dart';

import 'file_upload_manager.dart';

final locate = GetIt.instance;

Future<void> setupInjector() async {
  locate
    ..registerSingleton(AppRouter())
    ..registerLazySingleton(RootBloc.new)
    ..registerLazySingleton(DialogManager.new)
    ..registerLazySingleton(FileUploadManager.new);
}
