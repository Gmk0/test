import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 7; i++)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    //use i variable
                    'images/$i.png',
                    height: 40,
                    width: 40,
                  ),
                  Text(
                    "Photo",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 17,
                      color: Color(0xFF4C54A5),
                    ),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
