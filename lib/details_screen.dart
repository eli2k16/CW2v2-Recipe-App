import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String recipeName;
  final String imagePath;

  DetailsScreen({required this.recipeName, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> recipeDetails = {
      'Waffles': 'Ingredients: 2 cups of flour, 2 tablespoons of sugar, 1 tablespoon of baking powder, 1 and 3/4 cups of milk, 1 teaspoon of salt, 2 eggs, 4 tablespoons of vegetable oil or melted butter, 1 teaspoon of vanilla extract.  \nInstructions: Preheat the waffle maker. Then in a bowl, mix together the dry ingredients. In a seperate bowl, mix togther the wet ingredients. Then, combime the dry and wet mixtures and blend. Pour the batter into the waffke maker and cook. Finally, serve with your favorite topings!   ',
      'Pancakes': 'Ingredients: 1 cup of flour, 2 tablespoons of sugar, 1 tablespoon of of baking powder, a pinch of salt, 1 egg, 3/4 cup of milk, 2 tablespoons of melted butter or vegetable oil, 1 teaspoon of vanilla extract(optional)\nInstructions:Preheat a pan or skillet. Then in a bowl, mix together the dry ingredients. In a seperate bowl, mix togther the wet ingredients. Then, combime the dry and wet mixtures and blend. Lightly grease the skillet with butter and then pour a little less then 1/4 cup of batter onto the pan. Cook onto you see bubble form on the surface and then flip and do the same. Finally, serve with your favorite topings!   ', 
      'Hashbrowns': 'Ingredients: 2 potatoes, 2 tablespoons of vegetable oil, salt and pepper to taste, ...\nInstructions: Wash, then peel the potatoes. Grate them in a food processor or box grater. Remove excess moisture on them using a paper towel. In a large skillet, heat the vegetable oil over medium hot heat. Add in the grated potatoes and cook for a few minutes. Flip the potatoes after about 5 minutes, add finsish cooking until they are golden. Season to your liking!  ',
    };

    return Scaffold(
      appBar: AppBar(
        title: Text(
          recipeName,
          style: TextStyle(
            fontWeight: FontWeight.bold, // Bolden the recipe name in the AppBar
            fontSize: 24,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              recipeName,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.normal, // Bold the recipe name below
              ),
            ),
            SizedBox(height: 20),
            Text(
              recipeDetails[recipeName] ?? 'Recipe details not found',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal, // Unbold the details text
              ),
            ),
            SizedBox(height: 20),
            // Display the image below the recipe details
            Image.asset(
              imagePath, // Use the imagePath passed from HomeScreen
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}