import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pakao/RecipeView/recipe_instructions.dart';
import 'package:pakao/data/RecipeApi.dart';
import 'package:pakao/model/recipes.dart';

class FreshRecipes extends StatefulWidget {
    const FreshRecipes({ Key? key }) : super(key: key);

    @override
    State<FreshRecipes> createState() => _FreshRecipesState();
}

class _FreshRecipesState extends State<FreshRecipes> {
    List<Recipe> recipesList = [];
    
    void getRecipesFromApi() async => {
        RecipeApi.getRecipes().then(
            (response) {
                setState(
                    () {
                        Iterable list = json.decode(response.body["hits"]);
                        print(response.body.hits[0]['recipe']);
                        recipesList.addAll(list.map((model) => Recipe.fromJson(model['recipe'])).toList());
                    }
                );
            }
        ).catchError(
            (error) {
                print(error);
            }
        )
    };
    
    @override
    void initState() {
        super.initState();
        getRecipesFromApi();
    }
    
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
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.builder(
                        itemCount: recipesList.length,
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        
                        itemBuilder: (BuildContext context, int index) { 
                            return GestureDetector(
                                onTap: () => {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const RecipeInstructions()))
                                },
                                
                                child: Card(
                                    elevation: 10,
                                    color: const Color.fromARGB(255, 31, 31, 31),
                                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                    
                                    child: SizedBox(
                                        height: 250,
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
                                                                        child: Image.network(recipesList[index].image),
                                                                    ),
                                                                )
                                                            )
                                                        ]
                                                    ),
                                                    
                                                    const SizedBox(height: 10),
                                                    Text(recipesList[index].mealType[0], style: const TextStyle(color: Colors.blue, fontSize: 10)),
                                                    const SizedBox(height: 10),
                                                    Text(recipesList[index].label, style: const TextStyle(color: Colors.white, fontSize: 20)),
                                                    const SizedBox(height: 10),
                                                    Row(children: const [Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20)]),
                                                    const SizedBox(height: 10),
                                                    Text(recipesList[index].calories + ' calories', style: const TextStyle(color: Color.fromARGB(255, 255, 125, 50), fontSize: 10)),
                                                ]
                                            ),
                                        ),
                                    ),
                                ),
                            );
                        }
                    ),
                )
            ]
        );
    }
}