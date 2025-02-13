import 'package:flutter/material.dart';
import '../models/planet.dart';

class PlanetDetailScreen extends StatelessWidget {
  final Planet planet;

  PlanetDetailScreen({required this.planet});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(planet.name)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nome: ${planet.name}', style: TextStyle(fontSize: 18)),
            if (planet.nickname != null) Text('Apelido: ${planet.nickname}'),
            Text('Distância do Sol: ${planet.distanceFromSun} AU'),
            Text('Tamanho: ${planet.size} km'),
          ],
        ),
      ),
    );
  }
}
```
