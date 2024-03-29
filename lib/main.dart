import 'package:category_widget/category_route.dart';
import 'package:flutter/material.dart';

//The function that is called when main.dart is run
void main() => runApp(UnitConverterApp());

//This widget is the root of our application.
//The first screen we see is a list Categories, each os which has a list of Units.
class UnitConverterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Unit Converter',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.black,
          displayColor:Colors.grey[600],
        ),

        primaryColor:Colors.grey[500],
        textSelectionHandleColor:Colors.green[500],
      ),
      home: CategoryRoute(),
    );
  }
}