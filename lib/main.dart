import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Home/home_page.dart';

void main() {
    WidgetsFlutterBinding.ensureInitialized();
    Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCPdNlIXBZ3zwQppoGQ8XccBkYX2beAE4Y",
            appId: "1:15010187841:android:40c2989573d0e6f43694c0",
            messagingSenderId: "15010187841",
            projectId: "git-github-webinar"
        )
    );
        
    runApp(const MyApp());
}

// Widget authCheck() {
//     if (FirebaseAuth.instance.currentUser == null) {
//         return const Login();
//     } 
//     else {
//         return const HomePage();
//     }
// }

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Pakao',
            theme: ThemeData(
                colorScheme: ColorScheme.fromSwatch().copyWith(
                    primary: Colors.black,
                ),
            ),
            
            home: const HomePage(),
        );
    }
}
