// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyByi18hlsXzhK1pL_xq_OpTnSWQ1W_SCuk',
    appId: '1:974571096401:web:51ab185bc5a96d5e9a6b70',
    messagingSenderId: '974571096401',
    projectId: 'leptonscipro-31792',
    authDomain: 'leptonscipro-31792.firebaseapp.com',
    databaseURL: 'https://leptonscipro-31792-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'leptonscipro-31792.appspot.com',
    measurementId: 'G-C70G5S6HNB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBogPa96bXKrKGAaJpaHrqMpeNdq5nn7aE',
    appId: '1:974571096401:android:cbfffe714325f5709a6b70',
    messagingSenderId: '974571096401',
    projectId: 'leptonscipro-31792',
    databaseURL: 'https://leptonscipro-31792-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'leptonscipro-31792.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDSNt2JwpQvleEeaOw7NYvdgKoP6TwLCsI',
    appId: '1:974571096401:ios:bbfb22a1c5e6f79f9a6b70',
    messagingSenderId: '974571096401',
    projectId: 'leptonscipro-31792',
    databaseURL: 'https://leptonscipro-31792-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'leptonscipro-31792.appspot.com',
    androidClientId: '974571096401-3k5h753kln80tbk139rphtbkiadkbud6.apps.googleusercontent.com',
    iosClientId: '974571096401-tc8acrecsru9m91ra3t6tedi2tfotkhi.apps.googleusercontent.com',
    iosBundleId: 'com.example.sciproFinalApplication',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDSNt2JwpQvleEeaOw7NYvdgKoP6TwLCsI',
    appId: '1:974571096401:ios:bbfb22a1c5e6f79f9a6b70',
    messagingSenderId: '974571096401',
    projectId: 'leptonscipro-31792',
    databaseURL: 'https://leptonscipro-31792-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'leptonscipro-31792.appspot.com',
    androidClientId: '974571096401-3k5h753kln80tbk139rphtbkiadkbud6.apps.googleusercontent.com',
    iosClientId: '974571096401-tc8acrecsru9m91ra3t6tedi2tfotkhi.apps.googleusercontent.com',
    iosBundleId: 'com.example.sciproFinalApplication',
  );
}
