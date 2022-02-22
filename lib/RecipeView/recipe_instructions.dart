import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:pakao/RecipeView/recipe_view.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class RecipeInstructions extends StatelessWidget {
    const RecipeInstructions({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Scaffold(
                backgroundColor: Colors.black,
                appBar: AppBar(title: const Text("Recipe")),
                body: SlidingUpPanel(
                    parallaxEnabled: true,
                    parallaxOffset: .2,
                    color: const Color.fromARGB(255, 31, 31, 31),
                    minHeight: MediaQuery.of(context).size.height * 0.4,
                    maxHeight: MediaQuery.of(context).size.height * 0.9,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60),
                    ),
                    
                    panel: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                        Card(
                                            color: Colors.grey,
                                            child: SizedBox(
                                                width: MediaQuery.of(context).size.width * 0.2,
                                                height: 5,
                                            ),
                                        )
                                    ]
                                ),
                                const SizedBox(height: 20),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                        const Text("French Toast with Berries", style: TextStyle(color: Colors.white, fontSize: 25)),
                                        IconButton(
                                            icon: const Icon(Icons.favorite_border, color: Colors.grey, size: 30),
                                            onPressed: () {},
                                        ),
                                    ],
                                ),
                                const SizedBox(height: 5),
                                Text("120 calories", style: TextStyle(color: Colors.orange[900], fontSize: 15)),
                                const SizedBox(height: 10),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                        Row(
                                            children: const [
                                                Icon(Icons.timer, color: Colors.grey),
                                                SizedBox(width: 8),
                                                Text("45 mins", style: TextStyle(color: Colors.grey))
                                            ],
                                        ),
                                        const SizedBox(width: 20),
                                        Row(
                                            children: const [
                                                Icon(Icons.restaurant, color: Colors.grey),
                                                SizedBox(width: 8),
                                                Text("1 serving", style: TextStyle(color: Colors.grey)),
                                            ],
                                        )
                                    ],
                                ),
                                Divider(height: 30, thickness: 2, color: Colors.grey[800]),
                                Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        const Text("Ingredients", style: TextStyle(color: Colors.white, fontSize: 22)),
                                        const SizedBox(height: 10),
                                        SizedBox(
                                            height: 75,
                                            width: MediaQuery.of(context).size.width,
                                            
                                            child: ListView(
                                                scrollDirection: Axis.horizontal,
                                                physics: const BouncingScrollPhysics(),
                                                children: getIngredients(),
                                            ),
                                        )
                                    ],
                                ),
                                Divider(height: 30, thickness: 2, color: Colors.grey[800]),
                                Expanded(
                                    child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                            const Text("Directions", style: TextStyle(color: Colors.white, fontSize: 22)),
                                            const SizedBox(height: 10),
                                            Expanded(
                                                child: ListView(
                                                    physics: const BouncingScrollPhysics(),
                                                    children: getDirections(),
                                                    shrinkWrap: true,
                                                )
                                            ),
                                        ],
                                    ),
                                ),
                            ],
                        ),
                    ),
                    body: const RecipeView(),
                )
        );
    }
}

List<Widget> getIngredients() {
    List<Widget> items = [];
    for (var i = 0; i < 15; i++) {
        items.add(
            Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Image.asset(
                        'assets/food.png',
                        fit: BoxFit.fill,
                        width: 60,
                        height: 40,
                    ),
                ),
            ),
        );
        if (i < 14) {
            items.add(const SizedBox(width: 20));
        }
    }
    
    return items;
}

List<Widget> getDirections() {
    List<Widget> items = [];
    for (var i = 0; i < 15; i++) {
        items.add(
            const Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: BulletText(txt:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ornare at nisl ut tempor. Donec."),
            ),
        );
    }
    
    return items;
}

class BulletText extends StatelessWidget {
    final String txt;

    const BulletText({Key? key, required this.txt}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                Text('\u2022',
                    style: TextStyle(color: Colors.orange[900], fontSize: 15),
                ),
                const SizedBox(width: 15),
                Expanded(
                    child: Text(txt, style: const TextStyle(color: Colors.white, fontSize: 15)),
                )
            ],
        );
    }
}
