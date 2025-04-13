import 'package:flutter/material.dart';
import 'package:my_cats/Widgets/cat_details.dart';
import 'package:my_cats/main.dart';
import 'package:my_cats/model/cat.dart';

class CatDetailsScreen extends StatefulWidget {
  final Cat cat;
  const CatDetailsScreen({super.key, required this.cat});

  @override
  State<CatDetailsScreen> createState() => _CatDetailsScreenState();
}

class _CatDetailsScreenState extends State<CatDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (favorateCats.contains(widget.cat)) {
            favorateCats.remove(widget.cat);
            setState(() {});
          } else {
            favorateCats.add(widget.cat);
            for (var item in favorateCats) {
              print(item.name);
            }
            setState(() {});
          }
          showDialog(
              context: context,
              builder: (context) {
                return const Dialog(
                  child: SizedBox(
                    height: 100,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.check),
                          Text("Added To Favorite Successfully")
                        ],
                      ),
                    ),
                  ),
                );
              });
        },
        child: Icon(
          favorateCats.contains(widget.cat)
              ? Icons.favorite
              : Icons.favorite_border,
          color: Colors.red,
        ),
      ),
      appBar: AppBar(
        title: Text(widget.cat.name),
        backgroundColor: Colors.deepPurple,
      ),
      body: CatDetailsWidget(cat: widget.cat),
    );
  }
}
