import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'solar_system_data.dart';

class PlanetDetailsScreen extends StatelessWidget {
  final Map<String, dynamic> planet;

  PlanetDetailsScreen({required this.planet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(planet['name']),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(planet['image']),
            SizedBox(height: 16),
            Text(planet['description']),
          ],
        ),
      ),
    );
  }
}