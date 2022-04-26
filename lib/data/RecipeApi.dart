import 'dart:async';

import 'package:http/http.dart' as http;

class RecipeApi {
    static Future getRecipes() {
        return http.get(Uri.parse("https://api.edamam.com/api/recipes/v2?type=public&q=ingrediant-name&app_id=6d80d5cd&app_key=72ffab5c2dcc52c00cbd7eeafeaf3896"));
    }
}