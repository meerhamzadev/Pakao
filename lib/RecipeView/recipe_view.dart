import 'package:flutter/material.dart';

class RecipeView extends StatelessWidget {
    var recipe;

    RecipeView({ Key? key, required this.recipe}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    
                    children: [
                        Text(recipe['mealType'], style: TextStyle(color: Colors.blue, fontSize: 20)),
                        const SizedBox(height: 20),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                Expanded(child: Text(recipe['label'], style: const TextStyle(color: Colors.white, fontSize: 30))),
                                const SizedBox(width: 20),
                                const Icon(Icons.favorite_border, color: Color.fromARGB(255, 31, 31, 31), size: 30),
                            ],
                        ),
                        const SizedBox(height: 20),
                        Text(recipe["calories"] + " calories", style: const TextStyle(color: Colors.orange, fontSize: 20)),
                        const SizedBox(height: 20),
                        Row(children: const [Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20)]),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                Column(
                                    children: [
                                        Row(
                                            children: [
                                                const Icon(Icons.timer, color: Colors.grey, size: 20),
                                                const SizedBox(width: 10),
                                                Text(recipe['totalTime'] + " min", style: TextStyle(color: Colors.grey, fontSize: 20)),
                                            ],
                                        ),
                                        const SizedBox(height: 40),
                                        Row(
                                            children: [
                                                const Icon(Icons.restaurant, color: Colors.grey, size: 20),
                                                const SizedBox(width: 10),
                                                Text(recipe['yield'] + " serving", style: const TextStyle(color: Colors.grey, fontSize: 20)),
                                            ],
                                        )
                                    ],
                                ),
                                Expanded(
                                    child: Column(
                                        children: [
                                            Transform.translate(
                                                offset: const Offset(150, 0),
                                                child: Image.network(recipe['image'])
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