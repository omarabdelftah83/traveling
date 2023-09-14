import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:traveling/app_data.dart';
import 'package:traveling/model/trips.dart';

import '../widget/trips_item.dart';

class CategoryTrips extends StatelessWidget {
  final String id;
  final String title;
  final String images;

  CategoryTrips(this.id, this.title, this.images);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Trips_data[index].categories[0] == id
                ? (TripItem(
                    id: Trips_data[index].id,
                    title: Trips_data[index].title,
                    imageUrl: Trips_data[index].imageUrl,
                    duration: Trips_data[index].duration,
                    tripType: Trips_data[index].tripType,
                    season: Trips_data[index].season))
                : SizedBox();
          },
          itemCount: Trips_data.length,
        ));
  }

}
