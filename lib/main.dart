import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:traveling/screen/categories_screen1.dart';
import 'package:traveling/screen/tab_bottom_screen.dart';
import 'package:traveling/screen/tab_top_screen.dart';

import 'app_data.dart';
import 'model/trips.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  final List<Trip> favoritesTrip=[];

   void _manageFavorite(String tripId) {
     final existingIndex =
     favoritesTrip.indexWhere((trip) => trip.id == tripId);
     if (existingIndex >= 0) {
       setState(() {
         favoritesTrip.removeAt(existingIndex);
       });
     } else {
       setState(() {
         favoritesTrip.add(
           Trips_data.firstWhere((trip) => trip.id == tripId),
         );
       });
     }
   }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabsScreenBottom(favoritesTrip),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('ar', 'AE'), // English, no country code
      ],
    );
  }
}

