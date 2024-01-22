// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RecipeList(),
    );
    
  }
}

class RecipeList extends StatelessWidget {
  const RecipeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My List of favourite recipes'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'These are my favourite recipes',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          RecipeCard(
            'Mutton Curry',
            'Wash, fry, spice, cook and serve',
            'https://tinyurl.com/4ww8shs3',
            const [
              '500g mutton',
              '2 onions, finely chopped',
              '2 tomatoes, pureed',
              '1/2 cup yogurt',
              '1 tablespoon ginger-garlic paste',
              '1 teaspoon garam masala',
              '1 teaspoon turmeric powder',
              'Salt to taste',
            ],
            const [
              'Wash the mutton thoroughly.',
              'Fry chopped onions until golden brown.',
              'Add ginger-garlic paste and sauté for 2 minutes.',
              'Add mutton and cook until browned.',
              'Add tomato puree, yogurt, and spices.',
              'Cook until mutton is tender.',
              'Garnish with coriander leaves and serve hot.'
            ],
          ),
          RecipeCard(
            'Spanish Omelette',
            'Deep frying the potatoes in 1 – 2 cups of oil, depending on how many potatoes you are using...',
            'https://tinyurl.com/24xe8jmv',
            const [
              '4 potatoes, thinly sliced',
              '1 onion, sliced',
              '6 eggs',
              '1/2 cup olive oil',
              'Salt and pepper to taste',
            ],
            const [
              'Heat olive oil in a non-stick pan.',
              'Fry the sliced potatoes until golden brown.',
              'Add sliced onions and cook until soft.',
              'Beat eggs, season with salt and pepper.',
              'Pour the egg mixture over the potatoes and onions.',
              'Cook until the edges set, then flip and cook the other side.',
              'Serve hot and enjoy!'
            ],
          ),
          RecipeCard(
            'Beef Stew',
            'Boil rice, cook beef and serve',
            'https://tinyurl.com/yje82j6y',
            const [
              '500g beef, cubed',
              '3 carrots, sliced',
              '2 potatoes, diced',
              '1 onion, chopped',
              '2 cloves garlic, minced',
              '4 cups beef broth',
              '1/2 cup tomato paste',
              '1 teaspoon thyme',
              'Salt and pepper to taste',
            ],
            const [
              'In a large pot, brown the beef over medium heat.',
              'Add garlic and onions, sauté until fragrant.',
              'Stir in tomato paste, beef broth, and thyme.',
              'Add carrots and potatoes, bring to a boil.',
              'Reduce heat and simmer until beef and vegetables are tender.',
              'Season with salt and pepper.',
              'Serve hot with rice.'
            ],
          ),
          RecipeCard(
            'Pizza',
            'Prepare dough, add meat, chicken or any preferred flavor',
            'https://tinyurl.com/yej68ctc',
            const [
              'Pizza dough',
              '1/2 cup tomato sauce',
              '1 cup shredded mozzarella cheese',
              'Toppings of your choice (pepperoni, mushrooms, olives, etc.)',
            ],
            const [
              'Preheat oven to 475°F (245°C).',
              'Roll out pizza dough and place on a baking sheet.',
              'Spread tomato sauce over the dough.',
              'Sprinkle shredded mozzarella cheese evenly.',
              'Add your favorite toppings.',
              'Bake in the preheated oven until the crust is golden and the cheese is bubbly.',
              'Slice and enjoy!'
            ],
          ),
          RecipeCard(
            'Pilau',
            'any type of  rice, soft meat, garlic, onion, ginger, salt, sunflower oil',
            'http://tinyurl.com/24awsws7',
            const [
              '250 g Beef',
              '2 Onion',
              '4 cloves Garlic',
              '5 cm Ginger or thumb sized',
              '2 small Bay leaves',
              'Salt to taste',
              '¼ cup Sunflower oil',
              '1 teaspoon Ground Cloves',
              '½ teaspoon Ground Cumin',
              '1 teaspoon Ground cinnamon',
              '½ teaspoon Ground cardamom',
              '½ teaspoon Ground Pepper',
              '2 cups Rice',
            ],
            const [
              'Cook until the beef is tender, then remove from heat. Keep the meet chunks and stock to one side.',
              'Chop the remaining onion and garlic.',
              'Wash the rice and repeat until the water runs clear.',
              'In another pan, heat the oil under low heat. Add the onions into the pot and cook until the onions start to caramelize and become brown. You should stir the onions with a wooden spoon continuously to prevent burning.',
              'Pour in the garlic and the ground spices. The brownish colour comes from the brown spices. Stir for 30 secs.',
              'Add the rice into the pot. Pour in the stock and meat chunks. Add more water so there is enough to cook the rice.',
              'Taste for salt and add more if needed.',
              'Cover the allow the rice to cook until all the moisture is absorbed.',
              'serve when ready',
            ],
          ),
        ],
      ),
    );
  }
}

class RecipeCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> instructions;

  // ignore: use_key_in_widget_constructors
  RecipeCard(this.title, this.description, this.imageUrl, this.ingredients, this.instructions);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(title),
        subtitle: Text(description),
        leading: Image.network(
          imageUrl,
          width: 75.0,
          height: 75.0,
          fit: BoxFit.cover,
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RecipeDetails(title, description, imageUrl, ingredients, instructions),
            ),
          );
        },
      ),
    );
  }
}

class RecipeDetails extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> instructions;

  const RecipeDetails(this.title, this.description, this.imageUrl, this.ingredients, this.instructions, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              imageUrl,
              width: double.infinity,
              height: 200.0,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(description),
            ),
            SectionTitle('Ingredients'),
            buildList(ingredients),
            SectionTitle('Instructions'),
            buildList(instructions),
          ],
        ),
      ),
    );
  }

  Widget buildList(List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: items
          .map((item) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('• $item', style: const TextStyle(fontSize: 16.0)),
              ))
          .toList(),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}