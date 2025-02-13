import 'package:flutter/material.dart';
import '../models/planet.dart';
import '../database/database_helper.dart';

class PlanetFormScreen extends StatefulWidget {
  @override
  _PlanetFormScreenState createState() => _PlanetFormScreenState();
}

class _PlanetFormScreenState extends State<PlanetFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _nicknameController = TextEditingController();
  final TextEditingController _distanceController = TextEditingController();
  final TextEditingController _sizeController = TextEditingController();
  final dbHelper = DatabaseHelper.instance;

  void _savePlanet() async {
    if (_formKey.currentState!.validate()) {
      final planet = Planet(
        name: _nameController.text,
        nickname: _nicknameController.text.isNotEmpty ? _nicknameController.text : null,
        distanceFromSun: double.parse(_distanceController.text),
        size: double.parse(_sizeController.text),
      );
      await dbHelper.insertPlanet(planet);
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Adicionar Planeta')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Nome'),
                validator: (value) => value!.isEmpty ? 'Campo obrigatório' : null,
              ),
              TextFormField(
                controller: _nicknameController,
                decoration: InputDecoration(labelText: 'Apelido (opcional)'),
              ),
              TextFormField(
                controller: _distanceController,
                decoration: InputDecoration(labelText: 'Distância do Sol (AU)'),
                keyboardType: TextInputType.number,
                validator: (value) => value!.isEmpty ? 'Campo obrigatório' : null,
              ),
              TextFormField(
                controller: _sizeController,
                decoration: InputDecoration(labelText: 'Tamanho (km)'),
                keyboardType: TextInputType.number,
                validator: (value) => value!.isEmpty ? 'Campo obrigatório' : null,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _savePlanet,
                child: Text('Salvar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```
