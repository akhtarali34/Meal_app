import 'package:flutter/material.dart';

import 'dart:ui';

class Category{
  Category({
   required this.id,
   required this.title,
   this.color = Colors.orange
});

  final String  id;
  final String title;
  final Color  color;

}