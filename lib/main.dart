import 'package:flutter/material.dart';
import 'package:ssapp/screens/planet_screens.dart' as planet_screens;
import 'package:ssapp/screens/solar_system_data.dart' as solar_system_data;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solar System App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('النظام الشمسي'),
      ),
      body: ListView.builder(
        itemCount: solar_system_data.SolarSystemData.items.length,
        itemBuilder: (context, index) {
          final planet = solar_system_data.SolarSystemData.items.entries.elementAt(index);
          return ListTile(
            title: Text(planet.key),
            subtitle: Text(planet.value.englishName),
            trailing: Image.asset(planet.value.image),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => planet_screens.PlanetDetailsScreen(planet: planet.value)),
              );
            },
          );
        },
      ),
    );
  }
}git add .
git commit -m "Updated folders"