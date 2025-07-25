import 'package:flutter/material.dart';

class RecipeMenu extends StatelessWidget {
  const RecipeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Row(
        children: [
          _buildMenuItem(Icons.food_bank, "All"),
          const SizedBox(width: 30),
          _buildMenuItem(Icons.coffee, "Coffee"),
          const SizedBox(width: 30),
          _buildMenuItem(Icons.fastfood, "Burger"),
          const SizedBox(width: 30),
          _buildMenuItem(Icons.local_pizza, "Pizza"),
        ],
      ),
    );
  }

  Container _buildMenuItem(IconData mIcon, String mText) {
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            mIcon,
            color: Colors.redAccent,
            size: 30.0,
          ),
          SizedBox(
            height: 5,
          ),
          Text(mText),
        ],
      ),
    );
  }
}
