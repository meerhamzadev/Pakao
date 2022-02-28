import 'package:flutter/material.dart';
import 'package:pakao/Authentication/login.dart';
import 'package:pakao/Services/auth.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/background.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
                child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        const Icon(
                          Icons.account_circle_rounded,
                          color: Colors.grey,
                          size: 100,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              labelText: 'Name',
                              hintText: 'Enter your Name',
                              prefixIcon: const Icon(
                                Icons.vpn_key_rounded,
                                color: Colors.grey,
                              ),
                              border: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.grey, width: 2.0),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              labelStyle: const TextStyle(color: Colors.grey),
                              hintStyle: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              setState(() => email = value);
                            },
                            decoration: InputDecoration(
                              labelText: 'Email',
                              hintText: 'Enter your email',
                              prefixIcon: const Icon(
                                Icons.email,
                                color: Colors.grey,
                              ),
                              border: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.grey, width: 2.0),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              labelStyle: const TextStyle(color: Colors.grey),
                              hintStyle: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            style: const TextStyle(color: Colors.white),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            onChanged: (value) {
                              setState(() => password = value);
                            },
                            decoration: InputDecoration(
                              labelText: 'Password',
                              hintText: 'Enter your password',
                              prefixIcon: const Icon(
                                Icons.vpn_key_rounded,
                                color: Colors.grey,
                              ),
                              border: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.grey, width: 2.0),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              labelStyle: const TextStyle(color: Colors.grey),
                              hintStyle: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          height: 40,
                          width: 480,
                          child: ElevatedButton(
                            child: const Text('Register'),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.orange),
                            ),
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                                print(email);
                                print(password);
                                dynamic result =
                                    await _auth.register(email, password);
                                if (result == null) {
                                  print("i'm here");
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Login()));
                                }
                              }
                            },
                          ),
                        ),
                      ],
                    )))));
  }
}
