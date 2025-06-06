// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyDXc7QkzakQ5XxF_7J7Fd7gaV-8NampGpg',
    appId: '1:812436920337:web:eb4797339bcc7c145379b0',
    messagingSenderId: '812436920337',
    projectId: 'smart-genie-app',
    authDomain: 'smart-genie-app.firebaseapp.com',
    storageBucket: 'smart-genie-app.firebasestorage.app',
    measurementId: 'G-16NRGZKWR5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDahUVmv_ORZq-v9hjKVvKTG1_HjK1queE',
    appId: '1:812436920337:android:05a06bcd4ce4cad85379b0',
    messagingSenderId: '812436920337',
    projectId: 'smart-genie-app',
    storageBucket: 'smart-genie-app.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDjcknazmvAdbnJlsWFFVpe3heQJch6enk',
    appId: '1:812436920337:ios:6adf197e120c34065379b0',
    messagingSenderId: '812436920337',
    projectId: 'smart-genie-app',
    storageBucket: 'smart-genie-app.firebasestorage.app',
    iosBundleId: 'com.example.mySmartGenie',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDXc7QkzakQ5XxF_7J7Fd7gaV-8NampGpg',
    appId: '1:812436920337:web:9695c91c35da710a5379b0',
    messagingSenderId: '812436920337',
    projectId: 'smart-genie-app',
    authDomain: 'smart-genie-app.firebaseapp.com',
    storageBucket: 'smart-genie-app.firebasestorage.app',
    measurementId: 'G-FZB03VST7N',
  );
}
