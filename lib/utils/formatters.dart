import 'package:intl/intl.dart';

class Formatters {
  static String formatDistance(double distance) {
    return '${distance.toStringAsFixed(2)} AU';
  }

  static String formatSize(double size) {
    final formatter = NumberFormat('#,### km');
    return formatter.format(size);
  }
}
```
