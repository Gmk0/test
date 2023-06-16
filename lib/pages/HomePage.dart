import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test/widgets/CategoriesWidget.dart';
import 'package:test/widgets/HomeAppBar.dart';
import 'package:test/widgets/ItemsWidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
          HomeAppBar(),
          Container(
            //temporary Height
            // height: 500,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search here...",
                          ),
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.camera_alt,
                        size: 27,
                        color: Color(0xFF4C53A5),
                      )
                    ],
                  ),
                ),

                //categorie le titre

                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                ),

                //CATEGORIE LE WIDGET
                CategoriesWidget(),

                //Meilleur ventes  titre

                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Text(
                    "MeilleurS vente",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                ),

                ItemsWidget(),
              ],
            ),
          ),
        ]),
        bottomNavigationBar: CurvedNavigationBar(
          onTap: (index) {},
          backgroundColor: Colors.white,
          color: Color(0xFF4C53A5),
          height: 70,
          items: const [
            CurvedNavigationBarItem(
              child: Icon(
                Icons.home,
                size: 30,
                color: Colors.white,
              ),
              // label: 'Home',
            ),
            CurvedNavigationBarItem(
              child: Icon(
                CupertinoIcons.cart_fill,
                size: 30,
                color: Colors.white,
              ),
              //label: 'Search',
            ),
            CurvedNavigationBarItem(
              child: Icon(Icons.list, size: 30, color: Colors.white),
              // label: 'Search',
            ),
          ],
          animationCurve: Curves.easeInOut,
        ));
  }
}
