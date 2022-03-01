import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pakao/Authentication/login.dart';

import 'Home/home_page.dart';
import 'firebase.dart';

void main() {
    FirebaseConfig();
    
    runApp(const MyApp());
}

Widget authCheck() {
    if (FirebaseAuth.instance.currentUser == null) {
        return const Login();
    } 
    else {
        return const HomePage();
    }
}
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
            
            home: authCheck(),
        );
    }
}
