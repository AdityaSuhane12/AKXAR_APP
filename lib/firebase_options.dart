import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DefaultFirebaseOptions {
  static final apiKey1 = dotenv.env['API_KEY1'] ?? '';
  static final apiKey2 = dotenv.env['API_KEY2'] ?? '';

  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static final FirebaseOptions android = FirebaseOptions(
    apiKey: apiKey1,
    appId: '1:390478988337:android:373470fcf76e08b73d4110',
    messagingSenderId: '390478988337',
    projectId: 'flutterfirebasefirst-8a2e7',
    storageBucket: 'flutterfirebasefirst-8a2e7.appspot.com',
  );

  static final FirebaseOptions ios = FirebaseOptions(
    apiKey: apiKey2,
    appId: '1:390478988337:ios:1fb04a9f9a7bc4113d4110',
    messagingSenderId: '390478988337',
    projectId: 'flutterfirebasefirst-8a2e7',
    storageBucket: 'flutterfirebasefirst-8a2e7.appspot.com',
    androidClientId: '390478988337-1bn7pvr9l7gojh30gd7ka05af9lraa4c.apps.googleusercontent.com',
    iosClientId: '390478988337-8i1vh4k4ul0r0sl9j2stk3nv640p1bu4.apps.googleusercontent.com',
    iosBundleId: 'com.example.akxarApp',
  );
}
