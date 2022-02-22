import 'package:flutter/material.dart';

class RecipeView extends StatelessWidget {
    const RecipeView({ Key? key }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    
                    children: [
                        const Text("Breakfast", style: TextStyle(color: Colors.blue, fontSize: 20)),
                        const SizedBox(height: 20),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                                Expanded(child: Text("French Toast with Berries", style: TextStyle(color: Colors.white, fontSize: 30))),
                                SizedBox(width: 20),
                                Icon(Icons.favorite_border, color: Color.fromARGB(255, 31, 31, 31), size: 30),
                            ],
                        ),
                        const SizedBox(height: 20),
                        const Text("120 calories", style: TextStyle(color: Colors.orange, fontSize: 20)),
                        const SizedBox(height: 20),
                        Row(children: const [Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20)]),
                        const SizedBox(height: 20),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                Column(
                                    children: [
                                        Row(
                                            children: const [
                                                Icon(Icons.timer, color: Colors.grey, size: 20),
                                                SizedBox(width: 10),
                                                Text("45 min", style: TextStyle(color: Colors.grey, fontSize: 20)),
                                            ],
                                        ),
                                        const SizedBox(height: 40),
                                        Row(
                                            children: const [
                                                Icon(Icons.restaurant, color: Colors.grey, size: 20),
                                                SizedBox(width: 10),
                                                Text("1 serving", style: TextStyle(color: Colors.grey, fontSize: 20)),
                                            ],
                                        )
                                    ],
                                ),
                                Expanded(
                                    child: Column(
                                        children: [
                                            Transform.translate(
                                                offset: const Offset(150, 0),
                                                child: Image.asset("assets/food.png"),
                                            )
                                        ],
                                    ),
                                )
                            ]
                        ),
                    ]
                ),
            );
    }
}