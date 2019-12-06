import 'package:category_widget/category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);

class CategoryTile extends StatelessWidget {
  final Category category;
  final ValueChanged<Category> onTap;

//CategoryTile shows the nameand color of a Category
//Tapping on it brings you to the unit converter
  const CategoryTile({
    Key key,
    @required this.category,
    @required this.onTap,
  })  : assert(category != null),
        assert(onTap != null),
        super(key: key);

  //Este contexto describe como va ser un widget 
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowHeight,
        child: InkWell(
          borderRadius: _borderRadius,
          highlightColor: category.color['highlight'],
          splashColor: category.color['splash'],
          onTap: () => onTap(category),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Icon(
                    category.iconLocation,
                    size: 60.0,
                  ),
                ),
                Center(
                  child: Text(
                    category.name,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
