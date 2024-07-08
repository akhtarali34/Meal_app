
import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';

class CategoryGridWidget extends StatelessWidget {
  const CategoryGridWidget({
    super.key,
    required this.categary,
  });

  final Category categary;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      splashColor: Colors.teal,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(colors: [
          categary.color!.withOpacity(0.55),
          categary.color!.withOpacity(0.9),
        ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Text(categary.title, style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Theme.of(context).colorScheme.onBackground) ),
      ),
    );
  }
}
