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
    apiKey: 'AIzaSyBN5uW1ub0-btW13q9V_M98iZtgw2dOEuo',
    appId: '1:760095106387:web:94d8861355118b4d6eada6',
    messagingSenderId: '760095106387',
    projectId: 'mytunes-70a09',
    authDomain: 'mytunes-70a09.firebaseapp.com',
    storageBucket: 'mytunes-70a09.appspot.com',
    measurementId: 'G-L4L1668F0J',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBgp3Xu-_cokxhnZQi5MC3D_8lStwnwy2Y',
    appId: '1:760095106387:android:514ec5f408e4cc366eada6',
    messagingSenderId: '760095106387',
    projectId: 'mytunes-70a09',
    storageBucket: 'mytunes-70a09.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC-YPD60AonH0v1wMAWlhoRNGY5tjX_kLk',
    appId: '1:760095106387:ios:5e1c59ac4b00a69e6eada6',
    messagingSenderId: '760095106387',
    projectId: 'mytunes-70a09',
    storageBucket: 'mytunes-70a09.appspot.com',
    iosClientId: '760095106387-q4coaktkgv12usrdc2gr8375nthirnle.apps.googleusercontent.com',
    iosBundleId: 'com.example.mytunes',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC-YPD60AonH0v1wMAWlhoRNGY5tjX_kLk',
    appId: '1:760095106387:ios:5e1c59ac4b00a69e6eada6',
    messagingSenderId: '760095106387',
    projectId: 'mytunes-70a09',
    storageBucket: 'mytunes-70a09.appspot.com',
    iosClientId: '760095106387-q4coaktkgv12usrdc2gr8375nthirnle.apps.googleusercontent.com',
    iosBundleId: 'com.example.mytunes',
  );
}
