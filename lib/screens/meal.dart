
import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/models/meal.dart';

import '../models/meal.dart';
class MealScreen extends StatelessWidget {
  const MealScreen({super.key, required this.title, required this.meals});


  final String title;
  final List<Meal> meals;
  @override
  Widget build(BuildContext context) {
    Widget conent = ListView.builder(
      itemCount: meals.length,
        itemBuilder: (context, index)=> Text(meals[index].title));

    if (meals.isEmpty){
      return const  Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Nothing to display", style: TextStyle(color: Colors.white,fontSize: 24),),
          SizedBox(height: 20,),
          Text("select another one", )
        ],
      );
    }
    return Scaffold(
      appBar: AppBar(title: Text(title),),
      body: conent
    );


  }
}


