import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:category_widget/unit.dart';


//Custom widget llamado Category
class Category {
  final String name;
  final ColorSwatch color;
  final IconData iconLocation;
  final List<Unit> units;

  //Category guarda el nombre de la categoria, la lista de colores para la UI
  //la unidad de conversion y el icono que le representa
  const Category({
    @required this.name,
    @required this.color,
    @required this.iconLocation,
    @required this.units,
  })  : assert(name != null),
        assert(color != null),
        assert(iconLocation != null),
        assert(units != null);
}
