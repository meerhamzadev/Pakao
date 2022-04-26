import 'package:flutter/material.dart';
import 'package:pakao/Home/home_page.dart';

import '../Services/auth.dart';

class Login extends StatefulWidget {
    const Login({Key? key}) : super(key: key);

    @override
    State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
    final _formKey = GlobalKey<FormState>();
    String email = "";
    String password = "";
    final AuthService _auth = AuthService();
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Form(
                key: _formKey,
                child: Column(
                    children: [
                        Icon(Icons.account_circle_rounded, color: Colors.grey[400], size: 100),
                        Padding(
                            padding: const EdgeInsets.all(10),
                            child: TextFormField(
                                validator: (String? value) {
                                    if (value == null || value.isEmpty) {
                                        return 'Please enter some text';
                                    }
                                    
                                    // return null;
                                },
                                onChanged: (value) {
                                    setState(
                                        () => email = value
                                    );
                                },
                                decoration: InputDecoration(
                                    labelText: 'Email',
                                    hintText: 'Enter your email',
                                    prefixIcon: const Icon(Icons.email),
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                                ),
                            ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(10),
                            child: TextFormField(
                                validator: (value) {
                                    if (value == null || value.isEmpty) {
                                        return 'Please enter some text';
                                    }
                                    
                                    return null;
                                },
                                onChanged: (value) => {
                                    setState(
                                        () => password = value
                                    )
                                },
                                decoration: InputDecoration(
                                    labelText: 'Password',
                                    hintText: 'Enter your password',
                                    prefixIcon: const Icon(Icons.vpn_key_rounded),
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                                ),
                            ),
                        ),
                        SizedBox(
                            height: 40,
                            width: 480,
                            child: ElevatedButton(
                                child: const Text('Login'),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all<Color>(Colors.orange)),
                                    onPressed: () async {
                                    if (_formKey.currentState!.validate()) {
                                        _formKey.currentState!.save();
                                        dynamic result = await _auth.Login(email, password);
                                        
                                        if (result == null) {
                                            Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
                                        }
                                    }
                                },
                            ),
                        ),
                    ],
                )
            ),
        );
    }
}
