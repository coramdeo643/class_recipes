import 'package:flutter/material.dart';

class RecipeListItem extends StatelessWidget {
  final String imageName;
  final String title;
  // final String detail; too long to display
  const RecipeListItem(this.imageName, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/$imageName.jpeg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Have you ever made your own $title? "
            "Once you've tried it, you'll never go back.",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13,
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
