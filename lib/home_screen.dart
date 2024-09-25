import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<String> recipes = ['Waffles', 'Pancakes', 'Hashbrowns'];
  final List<String> images = [
    'images/waffles.png',
    'images/pancakes.png',
    'images/hashbrowns.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Breakfast Made Simple!',
          style: TextStyle(
            fontWeight: FontWeight.bold, // Bolden the AppBar title
            fontSize: 24,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: recipes.length,
              itemBuilder: (context, i) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          recipeName: recipes[i],
                          imagePath: images[i],
                        ),
                      ),
                    );
                  },
                  child: Column(
                    children: [
                      Text(
                        recipes[i],
                        style: TextStyle(
                          fontSize: 24, // Keep the size but remove bold
                          fontWeight: FontWeight.normal, // Unbold the text
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Image.asset(
                        images[i],
                        height: 150, // Fixed height to keep images the same size
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                );
              },
            ),
          ),
          // Add the message below the list of recipes with reduced vertical padding
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0), // Reduced vertical padding
            child: Text(
              "Click on any of the above pictures to go to our recipes!",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal, // Normal weight for the message
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}