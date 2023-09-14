import 'package:flutter/material.dart';

import '../app_data.dart';

class TripItemDetails extends StatelessWidget {
  final String id;

  TripItemDetails({
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    final selectedTrip = Trips_data.firstWhere((trip) => trip.id == id);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedTrip.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(20))),
                  height: 400,
                  width: double.infinity,
                  child: Image.network(
                    selectedTrip.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            textName('الانشطه'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: selectedTrip.activities.length,
                  itemBuilder: (ctx, index) => Card(
                    elevation: 0.3,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 10,
                      ),
                      child: Text(selectedTrip.activities[index]),
                    ),
                  ),
                ),
              ),
            ),
            textName('البرنامج اليومي'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10)),
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: selectedTrip.program.length,
                  itemBuilder: (ctx, index) => Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(

                          child: Text('يوم ${index + 1}'),
                        ),
                        title: Text(selectedTrip.program[index]),
                      ),
                      Divider()
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}

Widget textName(String title) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      alignment: Alignment.topRight,
      child: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.blueAccent),
      ),
    ),
  );
}
