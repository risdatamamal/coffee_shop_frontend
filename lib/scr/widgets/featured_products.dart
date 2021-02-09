import 'package:coffee_shop/scr/commons.dart';
import 'package:coffee_shop/scr/models/products.dart';
import 'package:coffee_shop/scr/widgets/custom_text.dart';
import 'package:flutter/material.dart';

List<Products> productsList = [
  Products(
      name: "Coffee Cinnamon",
      price: 12000,
      rating: 4.3,
      vendor: "Good Coffee",
      wishList: true,
      image: "hot-coffee-cinnamon.jpg"),
  Products(
      name: "White Coffee",
      price: 9000,
      rating: 4.7,
      vendor: "Good Coffee",
      wishList: false,
      image: "coffee-white.jpg"),
  Products(
      name: "Cookies Pile",
      price: 8000,
      rating: 4.0,
      vendor: "Good Cookie",
      wishList: true,
      image: "pile-cookies.jpg"),
];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productsList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: EdgeInsets.fromLTRB(12, 14, 16, 12),
              child: Container(
                height: 250,
                width: 210,
                decoration: BoxDecoration(
                    color: white,
                    boxShadow: [
                      BoxShadow(
                          color: brown[100],
                          offset: Offset(5, 5),
                          blurRadius: 5)
                    ],
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset("images/${productsList[index].image}",
                          width: 210, height: 140),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CustomText(
                            text: productsList[index].name,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: white,
                                boxShadow: [
                                  BoxShadow(
                                      color: grey[300],
                                      offset: Offset(1, 1),
                                      blurRadius: 4)
                                ]),
                            child: Padding(
                              padding: const EdgeInsets.all(4),
                              child: productsList[index].wishList
                                  ? Icon(Icons.favorite,
                                      color: red, size: 18)
                                  : Icon(Icons.favorite_border,
                                      color: red, size: 18),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: CustomText(
                                  text: "${productsList[index].rating.toDouble()}", color: grey, size: 14),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Icon(Icons.star, color: red, size: 16),
                            Icon(Icons.star, color: red, size: 16),
                            Icon(Icons.star, color: red, size: 16),
                            Icon(Icons.star, color: red, size: 16),
                            Icon(Icons.star, color: grey, size: 16),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: CustomText(
                              text: "Rp ${productsList[index].price.toInt()}", weight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
