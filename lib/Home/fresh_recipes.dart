import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pakao/RecipeView/recipe_instructions.dart';

class FreshRecipes extends StatefulWidget {
  const FreshRecipes({Key? key}) : super(key: key);

    @override
    State<FreshRecipes> createState() => _FreshRecipesState();
}



class _FreshRecipesState extends State<FreshRecipes> {
    List<dynamic> recipesList = [];

    void getRecipesFromApi() async {
        try {
            final response = await http.get(Uri.parse("https://api.edamam.com/api/recipes/v2?type=public&q=ingrediant-name&app_id=6d80d5cd&app_key=72ffab5c2dcc52c00cbd7eeafeaf3896"));

            final data = jsonDecode(response.body);
            recipesList.addAll(
                data['hits'].map(
                    (dynamic recipe) {
                        return {
                            'label': recipe['recipe']['label'],
                            'calories': recipe['recipe']['calories'].toInt().toString(),
                            'ingredients': recipe['recipe']['ingredients'],
                            'mealType': recipe['recipe']['mealType'][0],
                            'ingredientLines': recipe['recipe']['ingredientLines'],
                            'image': recipe['recipe']['image'],
                            'totalNutrients': recipe['recipe']['totalNutrients'],
                            'yield': recipe['recipe']['yield'].toInt().toString(),
                            'totalTime': recipe['recipe']['totalTime'].toString(),
                        };
                    }
                )
            );
        }
        catch (e) {
            print(e.toString());
        }
    }
    
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
                    child: ListView.separated(
                        itemCount: recipesList.length,
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        
                        itemBuilder: (BuildContext context, int index) { 
                            return GestureDetector(
                                onTap: () => {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => RecipeInstructions(recipe: recipesList[index],)))
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
                                                    Expanded(
                                                        child: Image.network(recipesList[index]['image']),
                                                    ),
                                                    const SizedBox(height: 10),
                                                    Text(recipesList[index]['label'], style: const TextStyle(color: Colors.white, fontSize: 20)),
                                                    const SizedBox(height: 10),
                                                    Row(children: const [Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20), Icon(Icons.star, color: Color.fromARGB(255, 255, 125, 50), size: 20)]),
                                                    const SizedBox(height: 10),
                                                    Text(recipesList[index]['calories'] + ' calories', style: const TextStyle(color: Color.fromARGB(255, 255, 125, 50), fontSize: 10)),
                                                ]
                                            ),
                                        ),
                                    ),
                                ),
                            );
                        },
                        
                        separatorBuilder: (BuildContext context, int index) => const SizedBox(width: 20),
                    ),
                )
            ]
        );
    }
}