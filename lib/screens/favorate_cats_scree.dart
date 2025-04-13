import 'package:flutter/material.dart';
import 'package:my_cats/main.dart';

class FavorateCatScreen extends StatelessWidget {
  const FavorateCatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Favorates"),
        ),
        body: ListView.builder(
            itemCount: favorateCats.length,
            itemBuilder: (context, index) {
              return Dismissible(
                key: Key(favorateCats[index].name),
                onDismissed: (direction) {
                  favorateCats.remove(favorateCats[index]);
                },
                child: Card(
                  child: Row(children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.network(
                          favorateCats[index].imageLink,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(favorateCats[index].name),
                  ]),
                ),
              );
            }));
  }
}
