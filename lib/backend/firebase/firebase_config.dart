import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAdp6Lr7R0tRd5QNVB_0cWr6cO2kJb5RGE",
            authDomain: "comanda-2023e.firebaseapp.com",
            projectId: "comanda-2023e",
            storageBucket: "comanda-2023e.appspot.com",
            messagingSenderId: "964100369378",
            appId: "1:964100369378:web:d5d921a3a58d20c13467bb"));
  } else {
    await Firebase.initializeApp();
  }
}
