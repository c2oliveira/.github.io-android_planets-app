import 'package:flutter/material.dart';
import '../models/planet.dart';

class PlanetCard extends StatelessWidget {
  final Planet planet;
  final VoidCallback onTap;

  PlanetCard({required this.planet, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(planet.name),
        subtitle: Text(planet.nickname ?? 'Sem apelido'),
        onTap: onTap,
      ),
    );
  }
}
```
