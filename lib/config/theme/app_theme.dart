import 'package:flutter/material.dart';

const Color _customColor = Color(0x00000005);

const List<Color> _colorThemes = [
  _customColor,
  Colors.red,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.purple,
  Colors.black12
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0,
  }) : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'Colors must be between 0 and ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}
