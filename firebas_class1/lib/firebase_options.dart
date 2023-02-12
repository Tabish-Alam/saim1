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
    apiKey: 'AIzaSyCUp8RkJ-ZJSgdFKqItydm0MMprll00jwM',
    appId: '1:770112307887:web:5b9f506fa3c3cf98558a5a',
    messagingSenderId: '770112307887',
    projectId: 'fir-class1-2fffe',
    authDomain: 'fir-class1-2fffe.firebaseapp.com',
    storageBucket: 'fir-class1-2fffe.appspot.com',
    measurementId: 'G-BZP7FEMV78',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCvqmutQDikHu-rxVFBuiMQEbsVj2nOvbI',
    appId: '1:770112307887:android:c95e0bd9b558f180558a5a',
    messagingSenderId: '770112307887',
    projectId: 'fir-class1-2fffe',
    storageBucket: 'fir-class1-2fffe.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCZVaG-7t4sBTr2b4DlFFL1BVVAdiSClos',
    appId: '1:770112307887:ios:b2da8415efd4361a558a5a',
    messagingSenderId: '770112307887',
    projectId: 'fir-class1-2fffe',
    storageBucket: 'fir-class1-2fffe.appspot.com',
    iosClientId: '770112307887-sjtgfblljasu861d6b3vmkg0t24jkvpg.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebasClass1',
  );
}