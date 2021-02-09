import 'package:coffee_shop/scr/models/category.dart';
import 'package:flutter/material.dart';

import '../commons.dart';
import 'custom_text.dart';

List<Category> categoriesList = [
  Category(name: "Coffee", image: "036-coffee-3.png"),
  Category(name: "Tea", image: "001-tea-4.png"),
  Category(name: "Lemonade", image: "013-lemonade.png"),
  Category(name: "Ice Cream", image: "016-ice-cream.png"),
  Category(name: "Cookies", image: "026-cookies.png"),
  Category(name: "Biscuit", image: "050-biscuit.png"),
  Category(name: "Cupcake", image: "024-cupcake.png"),
  Category(name: "Donut", image: "022-donut.png"),
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: white,
                      boxShadow: [
                        BoxShadow(
                            color: brown[50],
                            offset: Offset(3, 1),
                            blurRadius: 5)
                      ],
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                    padding: EdgeInsets.all(4),
                    child: Image.asset(
                      "images/${categoriesList[index].image}",
                      width: 48,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CustomText(
                  text: categoriesList[index].name,
                  size: 16,
                  color: white,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
