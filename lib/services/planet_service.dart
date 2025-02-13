import '../database/database_helper.dart';
import '../models/planet.dart';

class PlanetService {
  final DatabaseHelper _dbHelper = DatabaseHelper.instance;

  Future<List<Planet>> getPlanets() async {
    return await _dbHelper.fetchPlanets();
  }
}
```
