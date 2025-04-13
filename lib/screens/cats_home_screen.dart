import 'package:flutter/material.dart';
import 'package:my_cats/Widgets/cat_card.dart';
import 'package:my_cats/main.dart';
import 'package:my_cats/screens/favorate_cats_scree.dart';

class CatsHomeScreen extends StatelessWidget {
  const CatsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Cats'),
          backgroundColor: Colors.deepPurple,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => FavorateCatScreen()));
                },
                icon: Icon(Icons.favorite, color: Colors.white))
          ],
        ),
        body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: cats.length,
          itemBuilder: (context, index) {
            final cat = cats[index];
            return CatCard(cat: cat);
          },
        ));
  }
}
