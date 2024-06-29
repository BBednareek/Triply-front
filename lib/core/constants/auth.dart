import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:triply/core/constants/constants.dart';

class Authentication extends Constants {
  static String get appType => Platform.isAndroid ? "Android" : "iOS";

  static const FirebaseOptions firebaseAndroid = FirebaseOptions(
    apiKey: "AIzaSyDUmKUOXwTUmmj-LO2dOyIkJ0aFlXah1b8",
    appId: "1:186110449755:android:b15ffaa3a77291cb81477e",
    messagingSenderId: "186110449755",
    projectId: "triply-43d36",
  );

  static const FirebaseOptions firebaseIOS = FirebaseOptions(
    apiKey: "AIzaSyDUmKUOXwTUmmj-LO2dOyIkJ0aFlXah1b8",
    appId: "1:186110449755:android:b15ffaa3a77291cb81477e",
    messagingSenderId: "186110449755",
    projectId: "triply-43d36",
    iosBundleId: "com.triply",
  );

  static FirebaseOptions get firebaseOptions =>
      appType == "Android" ? firebaseAndroid : firebaseIOS;
}
