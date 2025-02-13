class Planet {
  final int? id;
  final String name;
  final String? nickname;
  final double distanceFromSun;
  final double size;

  Planet({this.id, required this.name, this.nickname, required this.distanceFromSun, required this.size});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'nickname': nickname,
      'distanceFromSun': distanceFromSun,
      'size': size,
    };
  }
}
```
