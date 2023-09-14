import 'package:flutter/material.dart';
import 'package:traveling/screen/category_trips_screen2.dart';

import 'const.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrll;

  CategoryItem(this.id, this.title, this.imageUrll);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => CategoryTrips(id, title, imageUrll)));
          },
          splashColor: Colors.purple,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 200,
            width: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                image: DecorationImage(
                  image: NetworkImage(imageUrll),
                  fit: BoxFit.cover,
                )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 30,
                  width: 400,
                  child: Center(
                      child: Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
                  decoration: const BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
