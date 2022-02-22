import 'package:flutter/material.dart';
import 'package:pakao/Authentication/register.dart';
import 'package:pakao/RecentlyViewed/recently_viewed.dart';
import 'package:pakao/Settings/settings.dart';

import '../Favourites/favourites.dart';
import 'fresh_recipes.dart';
import 'recommended.dart';

class HomePage extends StatelessWidget {
    const HomePage({ Key? key }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
                title: const Text('Home'),
            ),
           
            drawer: Drawer(
                backgroundColor: const Color.fromARGB(255, 31, 31, 31),
                child: ListView(
                    children: [
                        const DrawerHeader(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 31, 31, 31),
                            ),
                            child: ListTile(
                                leading: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Color.fromARGB(255, 31, 31, 31),
                                    backgroundImage: AssetImage('assets/food.png'),
                                ),
                                title: Text('Username', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
                                subtitle: Text('View Profile', style: TextStyle(color: Colors.grey, fontSize: 15)),
                            ),
                        ),
                        const SizedBox(height: 20),
                        ListTile(
                            leading: const Icon(Icons.favorite, color: Colors.white),
                            title: const Text('Favourites', style: TextStyle(color: Colors.white, fontSize: 20)),
                            onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => const Favourites(),
                                ));
                            },
                        ),
                        const SizedBox(height: 20),
                        ListTile(
                            leading: const Icon(Icons.history, color: Colors.white),
                            title: const Text("Recently Viewed", style: TextStyle(color: Colors.white, fontSize: 20)),
                            onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => const RecentlyViewed(),
                                ));
                            },
                        ),
                        const SizedBox(height: 20),
                        ListTile(
                            leading: const Icon(Icons.settings, color: Colors.white),
                            title: const Text('Settings', style: TextStyle(color: Colors.white, fontSize: 20)),
                            onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => const Settings(),
                                ));
                            },
                        ),
                        const SizedBox(height: 20),
                        ListTile(
                            leading: const Icon(Icons.exit_to_app, color: Colors.white),
                            title: const Text("Logout", style: TextStyle(color: Colors.white, fontSize: 20)),
                            onTap: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context) => const Register(),
                                ));
                            },
                        )
                    ],
                ),
            ),
            
            onDrawerChanged: (bool value) {
                if (true) {
                    Transform(
                        transform: Matrix4.translationValues(0, -100, 0),
                        child: const HomePage()
                    );
                }
            },
            
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