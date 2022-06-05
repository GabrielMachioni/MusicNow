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
    apiKey: 'AIzaSyBpAQRutOLd8WS-MC80E5bm0icCLDm0yWg',
    appId: '1:581817076401:web:949f5437aacf89f339f090',
    messagingSenderId: '581817076401',
    projectId: 'fatec-music-now',
    authDomain: 'fatec-music-now.firebaseapp.com',
    storageBucket: 'fatec-music-now.appspot.com',
    measurementId: 'G-BT8VVG1M8B',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAMhjj0dHXZ1sI_qPjKmiMkiPEu25FZ4ck',
    appId: '1:581817076401:android:0ec9147a9c916db839f090',
    messagingSenderId: '581817076401',
    projectId: 'fatec-music-now',
    storageBucket: 'fatec-music-now.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCk4wj9DIiWbaKTEd0en72Nm7sJLCEF5DU',
    appId: '1:581817076401:ios:70d68286337668fe39f090',
    messagingSenderId: '581817076401',
    projectId: 'fatec-music-now',
    storageBucket: 'fatec-music-now.appspot.com',
    iosClientId: '581817076401-26gp087u1soav15t692ete8be4ofkrtm.apps.googleusercontent.com',
    iosBundleId: 'com.example.musicnow',
  );
}
