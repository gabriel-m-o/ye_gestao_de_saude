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
    apiKey: 'AIzaSyBgV7NYDlmsDQDKAOTZVnrxT05S3ZOnVCE',
    appId: '1:660941902840:web:0f5f2bff8cc7252c633c0d',
    messagingSenderId: '660941902840',
    projectId: 'ye-gestao-de-saude-6843f',
    authDomain: 'ye-gestao-de-saude-6843f.firebaseapp.com',
    databaseURL: 'https://ye-gestao-de-saude-6843f-default-rtdb.firebaseio.com',
    storageBucket: 'ye-gestao-de-saude-6843f.appspot.com',
    measurementId: 'G-Z1J9CLG1WT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCGll-SnKpJ6lYaZhGgZz_fLDLCM3SM1VY',
    appId: '1:660941902840:android:e12a4416037d2213633c0d',
    messagingSenderId: '660941902840',
    projectId: 'ye-gestao-de-saude-6843f',
    databaseURL: 'https://ye-gestao-de-saude-6843f-default-rtdb.firebaseio.com',
    storageBucket: 'ye-gestao-de-saude-6843f.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBQ3luHfWROOZwRr6_bhZCtCh9fLvYom8M',
    appId: '1:660941902840:ios:305cd99cb9a98e4f633c0d',
    messagingSenderId: '660941902840',
    projectId: 'ye-gestao-de-saude-6843f',
    databaseURL: 'https://ye-gestao-de-saude-6843f-default-rtdb.firebaseio.com',
    storageBucket: 'ye-gestao-de-saude-6843f.appspot.com',
    iosBundleId: 'com.example.appYeGestaoDeSaude',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBQ3luHfWROOZwRr6_bhZCtCh9fLvYom8M',
    appId: '1:660941902840:ios:305cd99cb9a98e4f633c0d',
    messagingSenderId: '660941902840',
    projectId: 'ye-gestao-de-saude-6843f',
    databaseURL: 'https://ye-gestao-de-saude-6843f-default-rtdb.firebaseio.com',
    storageBucket: 'ye-gestao-de-saude-6843f.appspot.com',
    iosBundleId: 'com.example.appYeGestaoDeSaude',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBgV7NYDlmsDQDKAOTZVnrxT05S3ZOnVCE',
    appId: '1:660941902840:web:d349c6ea4ba1c1c3633c0d',
    messagingSenderId: '660941902840',
    projectId: 'ye-gestao-de-saude-6843f',
    authDomain: 'ye-gestao-de-saude-6843f.firebaseapp.com',
    databaseURL: 'https://ye-gestao-de-saude-6843f-default-rtdb.firebaseio.com',
    storageBucket: 'ye-gestao-de-saude-6843f.appspot.com',
    measurementId: 'G-BMHSK9JNZG',
  );
}