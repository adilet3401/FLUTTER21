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
    apiKey: 'AIzaSyDKNbXTSxoLzKawvdhij4LJG3EnExZe4Cs',
    appId: '1:526375174380:web:ce6d056d7a88de383ea5c9',
    messagingSenderId: '526375174380',
    projectId: 'projectone-2d54b',
    authDomain: 'projectone-2d54b.firebaseapp.com',
    storageBucket: 'projectone-2d54b.firebasestorage.app',
    measurementId: 'G-YWNEFM2Z7J',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDF_mInoHhhPTDN6wWX5E75Rc6LA97C0Fo',
    appId: '1:526375174380:android:8ad728fd89fc38ac3ea5c9',
    messagingSenderId: '526375174380',
    projectId: 'projectone-2d54b',
    storageBucket: 'projectone-2d54b.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBuCfaJBQ9YOmbHDzfhb7p4S_Ix87AMNl0',
    appId: '1:526375174380:ios:932018505d2069aa3ea5c9',
    messagingSenderId: '526375174380',
    projectId: 'projectone-2d54b',
    storageBucket: 'projectone-2d54b.firebasestorage.app',
    iosBundleId: 'com.example.sabakFirebaseAdd',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBuCfaJBQ9YOmbHDzfhb7p4S_Ix87AMNl0',
    appId: '1:526375174380:ios:932018505d2069aa3ea5c9',
    messagingSenderId: '526375174380',
    projectId: 'projectone-2d54b',
    storageBucket: 'projectone-2d54b.firebasestorage.app',
    iosBundleId: 'com.example.sabakFirebaseAdd',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDKNbXTSxoLzKawvdhij4LJG3EnExZe4Cs',
    appId: '1:526375174380:web:d4590ef93c10b6463ea5c9',
    messagingSenderId: '526375174380',
    projectId: 'projectone-2d54b',
    authDomain: 'projectone-2d54b.firebaseapp.com',
    storageBucket: 'projectone-2d54b.firebasestorage.app',
    measurementId: 'G-ND3DJZX0E7',
  );
}
