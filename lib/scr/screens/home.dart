import 'package:coffee_shop/scr/commons.dart';
import 'package:coffee_shop/scr/widgets/featured_products.dart';
import 'package:flutter/material.dart';
import 'package:coffee_shop/scr/widgets/categories.dart';
import 'package:coffee_shop/scr/widgets/custom_text.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: brown,
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 20.0),
                    child: CustomText(
                      text: "Apa yang ingin kamu minum?",
                      size: 18,
                      color: white,
                    )),
                Stack(
                  children: [
                    IconButton(
                        color: white,
                        padding: EdgeInsets.only(right: 20.0, top: 20.0),
                        icon: Icon(Icons.notifications_none),
                        onPressed: () {}),
                    Positioned(
                      top: 20,
                      right: 20,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: red,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: white,
                    boxShadow: [
                      BoxShadow(
                          color: grey[300], offset: Offset(2, 2), blurRadius: 4)
                    ],
                    borderRadius: BorderRadius.circular(30)),
                child: ListTile(
                  leading: Icon(
                    Icons.search,
                    color: brown,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                        hintText: "Cari minuman disini",
                        border: InputBorder.none),
                  ),
                  trailing: Icon(
                    Icons.filter_list,
                    color: brown,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Categories(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomText(
                text: "Featured",
                color: white,
                size: 20,
              ),
            ),
            Featured(),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomText(
                text: "Popular",
                color: white,
                size: 20,
              ),
            ),
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset("images/donuts.jpg"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.favorite, color: red,),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(left: 50.0, top: 10.0, bottom: 10.0),
              child: Image.asset(
                "images/store_mall_directory_24px_rounded.png",
                width: 26,
                height: 26,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0, left: 5.0),
              child: Image.asset(
                "images/shopping_cart_24px_rounded.png",
                width: 26,
                height: 26,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: 50.0, top: 10.0, bottom: 10.0),
              child: Image.asset(
                "images/account_circle_24px_rounded.png",
                width: 26,
                height: 26,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
