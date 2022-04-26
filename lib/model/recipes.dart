

class Recipe {
    String label;
    String calories;
    List<String> ingredients;
    List<String> mealType;
    List<String> ingredientLines;
    String image;
    List<String> totalNutrients;

    Recipe.fromJson(Map recipes) :
        label = recipes['label'],
        calories = recipes['calories'],
        ingredients = recipes['ingredients'],
        mealType = recipes['mealType'],
        ingredientLines = recipes['ingredientLines'],
        image = recipes['image'],
        totalNutrients = recipes['totalNutrients'];
        

    Map toJson() => {
        'label': label,
        'calories': calories,
        'ingredients': ingredients,
        'mealType': mealType,
        'ingredientLines': ingredientLines,
        'image': image,
        'totalNutrients': totalNutrients,
    };
}