import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart'
    show Firebase, FirebaseOptions;
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart' show FlutterError, PlatformDispatcher;
import 'package:triply/core/constants/auth.dart';

class FirebaseService {
  static Future<void> init() async {
    await Firebase.initializeApp(options: currentPlatform);

    FlutterError.onError = (errorDetails) =>
        FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);

    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };

    FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);
  }

  static FirebaseOptions get currentPlatform => Authentication.firebaseOptions;
}
