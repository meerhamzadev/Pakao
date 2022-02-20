import 'package:flutter/material.dart';

class Recommended extends StatelessWidget {
    const Recommended({ Key? key }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Column(
            children: [
                Row(
                    children: [
                        const Expanded(child: Text("Recommended", style: TextStyle(color: Colors.white, fontSize: 25))),
                        const SizedBox(width: 10),
                        TextButton(child: const Text("See All", style: TextStyle(color: Color.fromARGB(255, 255, 125, 50), fontSize: 20)), onPressed: () {}),
                    ],
                ),
                
                ListView.builder(itemCount: 10, shrinkWrap: true, physics: const ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                        return Card(
                            color: const Color.fromARGB(255, 31, 31, 31),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                            child: SizedBox(
                                height: 120,
                                
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Row(
                                            children: [
                                                Image.asset("assets/food.png", width: 100, height: 100),
                                                const SizedBox(width: 10),
                                                Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                        const Text("Recipe Type", style: TextStyle(color: Colors.blue, fontSize: 10)),
                                                        const SizedBox(height: 10),
                                                        const Text('Recipe Name', style: TextStyle(color: Colors.white, fontSize: 20)),
                                                        const SizedBox(height: 10),
                                                        Row(children: const [Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20)]),
                                                        const SizedBox(height: 10),
                                                        const Text('Recipe Calories', style: TextStyle(color: Color.fromARGB(255, 255, 125, 50), fontSize: 10))
                                                    ],
                                                ),
                                                
                                                const SizedBox(width: 100),
                                                const Icon(Icons.favorite_border, color: Colors.white),
                                            ]
                                        ),
                                    ),
                                ),
                            ),
                        );
                    },
                ),
            ],
        );
    }
}