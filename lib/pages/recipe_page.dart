import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:class_recipes/components/recipe_list_item.dart';
import 'package:class_recipes/components/recipe_menu.dart';
import 'package:class_recipes/components/recipe_title.dart';

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            RecipeTitle(),
            RecipeMenu(),
            RecipeListItem("coffee", "Made Coffee"),
            RecipeListItem("burger", "Made burger"),
            RecipeListItem("pizza", "Made pizza"),
          ],
        ),
      ),
    );
  } // end of Build

  // Method in Class
  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1.0,
      actions: [
        Icon(
          CupertinoIcons.search,
          color: Colors.black,
        ),
        const SizedBox(
          width: 15,
        ),
        Icon(
          CupertinoIcons.heart,
          color: Colors.redAccent,
        ),
        const SizedBox(
          width: 15,
        )
      ],
    );
  } // end of AppBar
} // end of Page
