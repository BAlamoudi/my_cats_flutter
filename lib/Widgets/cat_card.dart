import 'package:flutter/material.dart';
import 'package:my_cats/model/cat.dart';
import 'package:my_cats/screens/cat_details_screen.dart';

class CatCard extends StatelessWidget {
 final Cat cat;


  const CatCard({
    super.key, 
    required this.cat,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CatDetailsScreen(cat: cat);
        }));
      },
      child: Card(child: Column(
        children: [
          Expanded(
            child: Image.network(
              width: double.infinity,
              fit: BoxFit.cover,
              cat.imageLink)
          ),
          Text(cat.name,textAlign: TextAlign.center ,style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.deepPurple))
        ],
      )),
    );
  }
}