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
        return macos;
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
    apiKey: 'AIzaSyB2RWsmw5izjwa46ZoEuwBFLSlH-ugeZ5I',
    appId: '1:936316371348:web:e9d2a51b7f6c4841150f81',
    messagingSenderId: '936316371348',
    projectId: 'novoproject-6640c',
    authDomain: 'novoproject-6640c.firebaseapp.com',
    databaseURL: 'https://novoproject-6640c-default-rtdb.firebaseio.com',
    storageBucket: 'novoproject-6640c.firebasestorage.app',
    measurementId: 'G-84NVXR175Z',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDpXcgdJcp5PPSyCrRI02E_JF1qODJjODo',
    appId: '1:936316371348:android:ee34a16463a72554150f81',
    messagingSenderId: '936316371348',
    projectId: 'novoproject-6640c',
    databaseURL: 'https://novoproject-6640c-default-rtdb.firebaseio.com',
    storageBucket: 'novoproject-6640c.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBTAZ0y7KUfI_wnlaNZDYSDeNbQjVsaSck',
    appId: '1:936316371348:ios:7ff4c05c4c06165e150f81',
    messagingSenderId: '936316371348',
    projectId: 'novoproject-6640c',
    databaseURL: 'https://novoproject-6640c-default-rtdb.firebaseio.com',
    storageBucket: 'novoproject-6640c.firebasestorage.app',
    iosBundleId: 'com.example.crudFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBTAZ0y7KUfI_wnlaNZDYSDeNbQjVsaSck',
    appId: '1:936316371348:ios:7ff4c05c4c06165e150f81',
    messagingSenderId: '936316371348',
    projectId: 'novoproject-6640c',
    databaseURL: 'https://novoproject-6640c-default-rtdb.firebaseio.com',
    storageBucket: 'novoproject-6640c.firebasestorage.app',
    iosBundleId: 'com.example.crudFirebase',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB2RWsmw5izjwa46ZoEuwBFLSlH-ugeZ5I',
    appId: '1:936316371348:web:25bd762fc13219cb150f81',
    messagingSenderId: '936316371348',
    projectId: 'novoproject-6640c',
    authDomain: 'novoproject-6640c.firebaseapp.com',
    databaseURL: 'https://novoproject-6640c-default-rtdb.firebaseio.com',
    storageBucket: 'novoproject-6640c.firebasestorage.app',
    measurementId: 'G-78Z9V8CJ5T',
  );
}
