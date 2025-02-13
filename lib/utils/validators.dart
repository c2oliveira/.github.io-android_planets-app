class Validators {
  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Nome não pode estar vazio';
    }
    return null;
  }
}
```
