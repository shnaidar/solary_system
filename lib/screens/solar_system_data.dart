class SolarSystemItem {
  final String name;
  final String englishName;
  final String description;
  final String image;

  SolarSystemItem({ 
    
    required this.name, 
    required this.image,
    required this.englishName, 
    required this.description
    });
}

class SolarSystemData {
  static const List<Map<String, dynamic>> items = [
    {
      'name': 'الشمس',
      'englishName': 'Sun',
      'description': 'الشمس هو مركز النظام الشمسي',
      'image': 'assets/sun.png',
    },
    {
      'name': 'المريخ',
      'englishName': 'Mercury',
      'description': 'المريخ هو الكوكب الأقرب للشمس',
      'image': 'assets/mercury.png',
    },
    {
      'name': 'الزهرة',
      'englishName': 'Venus',
      'description': 'الزهرة هو الكوكب الثاني في النظام الشمسي',
      'image': 'assets/venus.png',
    },
    {
      'name': 'الأرض',
      'englishName': 'Earth',
      'description': 'الأرض هو الكوكب الثالث في النظام الشمسي',
      'image': 'assets/earth.png',
    },
    {
      'name': 'المريخ',
      'englishName': 'Mars',
      'description': 'المريخ هو الكوكب الرابع في النظام الشمسي',
      'image': 'assets/mars.png',
    },
    {
      'name': 'المشتري',
      'englishName': 'Jupiter',
      'description': 'المشتري هو الكوكب الخامس في النظام الشمسي',
      'image': 'assets/jupiter.png',
    },
    {
      'name': 'زحل',
      'englishName': 'Saturn',
      'description': 'زحل هو الكوكب السادس في النظام الشمسي',
      'image': 'assets/saturn.png',
    },
    {
      'name': 'أورانوس',
      'englishName': 'Uranus',
      'description': 'أورانوس هو الكوكب السابع في النظام الشمسي',
      'image': 'assets/uranus.png',
    },
    {
      'name': 'نبتون',
      'englishName': 'Neptune',
      'description': 'نبتون هو الكوكب الثامن في النظام الشمسي',
      'image': 'assets/neptune.png',
    },
  ];
}