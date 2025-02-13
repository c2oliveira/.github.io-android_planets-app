import 'package:flutter/material.dart';
import '../models/planet.dart';
import '../database/database_helper.dart';
import 'planet_detail_screen.dart';
import 'planet_form_screen.dart';

class PlanetListScreen extends StatefulWidget {
  @override
  _PlanetListScreenState createState() => _PlanetListScreenState();
}

class _PlanetListScreenState extends State<PlanetListScreen> {
  List<Planet> _planets = [];
  final dbHelper = DatabaseHelper.instance;

  @override
  void initState() {
    super.initState();
    _loadPlanets();
  }

  Future<void> _loadPlanets() async {
    final planets = await dbHelper.getPlanets();
    setState(() {
      _planets = planets;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista de Planetas')),
      body: ListView.builder(
        itemCount: _planets.length,
        itemBuilder: (context, index) {
          final planet = _planets[index];
          return ListTile(
            title: Text(planet.name),
            subtitle: Text(planet.nickname ?? 'Sem apelido'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PlanetDetailScreen(planet: planet),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => PlanetFormScreen()),
        ),
      ),
    );
  }
}
```
