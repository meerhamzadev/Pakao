import 'package:flutter/material.dart';

import '../favourites.dart';
import 'freshRecipes.dart';
import 'recommended.dart';

class HomePage extends StatelessWidget {
    const HomePage({ Key? key }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: const Text('Home'),
            ),
            backgroundColor: Colors.black,
            drawer: Drawer(
                backgroundColor: const Color.fromARGB(255, 31, 31, 31),
                child: ListView(
                    children: [
                        const DrawerHeader(
                            child: Text('Username', style: TextStyle(color: Colors.white, fontSize: 20)),
                        ),
                        ListTile(
                            title: const Text('Favourites', style: TextStyle(color: Colors.white, fontSize: 20)),
                            onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => const Favourites(),
                                ));
                            },
                        ),
                    ],
                ),
            ),
            
            body: ListView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.all(15.0),
                children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                            const Text("Bonjor User", style: TextStyle(color: Color.fromARGB(193, 158, 158, 158), fontSize: 20)),
                            const SizedBox(height: 20),
                            const Text("What would you like to Cook Today?", style: TextStyle(color: Colors.white, fontSize: 30)),
                            const SizedBox(height: 20),
                            
                            Row(
                                children: [
                                    Expanded(
                                        child: TextField(
                                            style: const TextStyle(color: Colors.white),
                                            decoration: InputDecoration(
                                                hintText: 'Search',
                                                hintStyle: const TextStyle(color: Color.fromARGB(193, 158, 158, 158)),
                                                fillColor: const Color.fromARGB(255, 31, 31, 31),
                                                filled: true,
                                                border: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                ),
                                            ),
                                        ),
                                    ),
                                    const SizedBox(width: 10),
                                    IconButton(
                                        icon: const Icon(Icons.tune, color: Colors.white, size: 30), color: const Color.fromARGB(255, 31, 31, 31),
                                        onPressed: () {},
                                    ),
                                ],
                            ),
                            
                            const SizedBox(height: 20),
                            const FreshRecipes(),
                            const SizedBox(height: 20),
                            const Divider(color: Color.fromARGB(193, 158, 158, 158)),
                            const SizedBox(height: 20),
                            const Recommended()
                        ],
                    ),
                ]
            ),
        );
    }
}