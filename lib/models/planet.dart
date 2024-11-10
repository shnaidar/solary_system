class Planet {
  final String name;
  final String description;
  final String imageUrl;

  Planet({required this.name, required this.description, required this.imageUrl});

  // Factory constructor to create a Planet from JSON data
  factory Planet.fromJson(Map<String, dynamic> json) {
    return Planet(
      name: json['name'],
      description: json['description'],
      imageUrl: json['imageUrl'],
    );
  }
}
