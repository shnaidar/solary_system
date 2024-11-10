import 'package:http/http.dart' as http; // Import for HTTP requests
import 'dart:convert'; // Import for JSON decoding
import '../models/planet.dart'; // Import your Planet model

class ApiService {
  static const String baseUrl = 'http://localhost:3000'; // Remplacez par l'URL de votre serveur déployé

  // Fonction pour récupérer la liste des planètes depuis l'API
  Future<List<Planet>> fetchPlanets() async {
    final response = await http.get(Uri.parse('$baseUrl/planets'));

    if (response.statusCode == 200) {
      List<dynamic> data = json.decode(response.body);
      return data.map((json) => Planet.fromJson(json)).toList();
    } else {
      throw Exception('Erreur de chargement des planètes');
    }
  }
}