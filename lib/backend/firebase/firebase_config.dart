import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCDgF8kqImjG8Ky6_fkp9tXG07DYoTt-xU",
            authDomain: "auxvi-5a02f.firebaseapp.com",
            projectId: "auxvi-5a02f",
            storageBucket: "auxvi-5a02f.appspot.com",
            messagingSenderId: "218036678327",
            appId: "1:218036678327:web:93691f206e3a2291d82732",
            measurementId: "G-KK53NB5490"));
  } else {
    await Firebase.initializeApp();
  }
}
