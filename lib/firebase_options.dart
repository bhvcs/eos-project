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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBFDDQMfAlDQ3oj8Wb-LfVkQaiuuRcKa7Q',
    appId: '1:835561877604:web:4f185dab1f187833da6f71',
    messagingSenderId: '835561877604',
    projectId: 'eos-project-ed5b0',
    authDomain: 'eos-project-ed5b0.firebaseapp.com',
    storageBucket: 'eos-project-ed5b0.appspot.com',
    measurementId: 'G-5ZPZSDQDB5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD52znpnfs5X6vlPAKcyOkpK9GsuJH7ayc',
    appId: '1:835561877604:android:1e6f55bcd9aa9f0dda6f71',
    messagingSenderId: '835561877604',
    projectId: 'eos-project-ed5b0',
    storageBucket: 'eos-project-ed5b0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAntdOxEh1ELQdfDdU-YKhSvGfF3ucOSrc',
    appId: '1:835561877604:ios:40a21e9ebd036b8cda6f71',
    messagingSenderId: '835561877604',
    projectId: 'eos-project-ed5b0',
    storageBucket: 'eos-project-ed5b0.appspot.com',
    iosBundleId: 'com.example.eosProject',
  );
}
