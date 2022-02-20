import 'package:flutter/material.dart';

class FreshRecipes extends StatelessWidget {
    const FreshRecipes({ Key? key }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Column(
            children: [
                Row(
                    children: [
                        const Expanded(child: Text("Today's Fresh Recipes", style: TextStyle(color: Colors.white, fontSize: 25))),
                        const SizedBox(width: 10),
                        TextButton(child: const Text("See All", style: TextStyle(color: Color.fromARGB(255, 255, 125, 50), fontSize: 20)), onPressed: () {}),
                    ],
                ),
                
                const SizedBox(height: 20),
                SizedBox(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        children: [
                            Card(
                                elevation: 10,
                                color: const Color.fromARGB(255, 31, 31, 31),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                
                                child: SizedBox(
                                    height: 200,
                                    width: 150,
                                    
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                Row(
                                                    children: [
                                                        const Icon(Icons.favorite_border, color: Colors.white),
                                                        Expanded(
                                                            child: SizedBox(
                                                                child: Transform.translate(
                                                                    offset: const Offset(30, 10),
                                                                    child: Image.asset("assets/food.png"),
                                                                ),
                                                            )
                                                        )
                                                    ]
                                                ),
                                                
                                                const SizedBox(height: 10),
                                                const Text("Recipe Type", style: TextStyle(color: Colors.blue, fontSize: 10)),
                                                const SizedBox(height: 10),
                                                const Text('Recipe Name', style: TextStyle(color: Colors.white, fontSize: 20)),
                                                const SizedBox(height: 10),
                                                Row(children: const [Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20)]),
                                                const SizedBox(height: 10),
                                                const Text('Recipe Calories', style: TextStyle(color: Color.fromARGB(255, 255, 125, 50), fontSize: 10)),
                                            ]
                                        ),
                                    ),
                                ),
                            ),
                            const SizedBox(width: 20,),
                            Card(
                                elevation: 10,
                                color: const Color.fromARGB(255, 31, 31, 31),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                
                                child: SizedBox(
                                    height: 200,
                                    width: 150,
                                    
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                Row(
                                                    children: [
                                                        const Icon(Icons.favorite_border, color: Colors.white),
                                                        Expanded(
                                                            child: SizedBox(
                                                                child: Transform.translate(
                                                                    offset: const Offset(30, 10),
                                                                    child: Image.asset("assets/food.png"),
                                                                ),
                                                            )
                                                        )
                                                    ]
                                                ),
                                                const SizedBox(height: 10),
                                                const Text("Recipe Type", style: TextStyle(color: Colors.blue, fontSize: 10)),
                                                const SizedBox(height: 10),
                                                const Text('Recipe Name', style: TextStyle(color: Colors.white, fontSize: 20)),
                                                const SizedBox(height: 10),
                                                Row(children: const [Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20)]),
                                                const SizedBox(height: 10),
                                                const Text('Recipe Calories', style: TextStyle(color: Color.fromARGB(255, 255, 125, 50), fontSize: 10)),
                                            ]
                                        ),
                                    ),
                                ),
                            ),
                            const SizedBox(width: 20,),
                            Card(
                                elevation: 10,
                                color: const Color.fromARGB(255, 31, 31, 31),
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                
                                child: SizedBox(
                                    height: 200,
                                    width: 150,
                                    
                                    child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                Row(
                                                    children: [
                                                        const Icon(Icons.favorite_border, color: Colors.white),
                                                        Expanded(
                                                            child: SizedBox(
                                                                child: Transform.translate(
                                                                    offset: const Offset(30, 10),
                                                                    child: Image.asset("assets/food.png"),
                                                                ),
                                                            )
                                                        )
                                                    ]
                                                ),
                                                
                                                const SizedBox(height: 10),
                                                const Text("Recipe Type", style: TextStyle(color: Colors.blue, fontSize: 10)),
                                                const SizedBox(height: 10),
                                                const Text('Recipe Name', style: TextStyle(color: Colors.white, fontSize: 20)),
                                                const SizedBox(height: 10),
                                                Row(children: const [Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20)]),
                                                const SizedBox(height: 10),
                                                const Text('Recipe Calories', style: TextStyle(color: Color.fromARGB(255, 255, 125, 50), fontSize: 10)),
                                            ]
                                        ),
                                    ),
                                ),
                            ),
                        ],
                    ),
                )
            ]
        );
    }
}