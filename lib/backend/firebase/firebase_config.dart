import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDoh0a-qjCTlujJXg4iqLG7s3objOw2JvM",
            authDomain: "eziorder-9caeb.firebaseapp.com",
            projectId: "eziorder-9caeb",
            storageBucket: "eziorder-9caeb.appspot.com",
            messagingSenderId: "600866185947",
            appId: "1:600866185947:web:0b578155e52ca50d0ca2fe",
            measurementId: "G-6J6P5SFC22"));
  } else {
    await Firebase.initializeApp();
  }
}
