import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:triply/core/addons/bloc_observer.dart';
import 'package:triply/core/addons/firebase_service.dart';
import 'package:triply/core/di/injectable.dart';

class MainMethods {
  static Future<void> mainAddon() async {
    WidgetsFlutterBinding.ensureInitialized();
    HydratedBloc.storage = await HydratedStorage.build(
        storageDirectory: await getApplicationDocumentsDirectory());
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    Bloc.observer = ProjectBlocObserver();

    await FirebaseService.init();

    configureDependencies();
  }
}
