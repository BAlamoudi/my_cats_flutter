import 'package:flutter/material.dart';
import 'package:my_cats/data/all_cats.dart';
import 'package:my_cats/model/cat.dart';
import 'package:my_cats/screens/cat_details_screen.dart';
import 'package:my_cats/screens/cats_home_screen.dart';
import 'package:my_cats/screens/navigation_bar.dart';

final cats= allCats.map<Cat>((jsonCat) => Cat.fromJson(jsonCat)).toList();
List<Cat> favorateCats=[];

void main() {
  
  /*final listOfCatsAsJson=allCats;
  final listOfCatsAsObjects = <Cat>[];
  for (var i = 0; i<listOfCatsAsJson.length; i++){
    final catAsJson = listOfCatsAsJson[i];
    final catAsObject= Cat.fromJson(catAsJson);
    listOfCatsAsObjects.add(catAsObject); 
  }*/
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  NaigationBarScreen(),
    );
  }
}
