import 'package:flutter/material.dart';
import '../models/planet.dart';
import '../services/api_service.dart';
import 'planet_screens.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Planet>> planets;
  final ApiService apiService = ApiService();

  @override
  void initState() {
    super.initState();
    planets = apiService.fetchPlanets();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('النظام الشمسي'),
      ),
      body: PlanetScreens(),
    );
  }

  Widget PlanetScreens() {
    return Text('PlanetScreens');
  }
}