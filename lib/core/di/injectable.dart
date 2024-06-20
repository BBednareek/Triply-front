import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:triply/core/di/injectable.config.dart';

final GetIt locator = GetIt.instance;

@injectableInit
void configureDependencies() => locator.init();
