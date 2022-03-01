import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void FirebaseConfig() {
    WidgetsFlutterBinding.ensureInitialized();

    Firebase.initializeApp(options: const FirebaseOptions(
        apiKey: "AIzaSyCPdNlIXBZ3zwQppoGQ8XccBkYX2beAE4Y",
        appId: "1:15010187841:android:40c2989573d0e6f43694c0",
        messagingSenderId: "15010187841",
        projectId: "git-github-webinar"
    ));
}