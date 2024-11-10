import 'package:flutter/material.dart';
import 'solar_system_data.dart';
import 'planet_details_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('النظام الشمسي'),
      ),
      body: ListView.builder(
        itemCount: SolarSystemData.items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(SolarSystemData.items[index].name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PlanetDetailsScreen(planet: SolarSystemData.items[index])),
              );
            },
          );
        },
      ),
    );
  }
}

class SolarSystemData {
  static var items;
}
