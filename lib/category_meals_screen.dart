import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CategoryMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NeumorphicAppBar(
        title: Text("The Recipes"),
        centerTitle: true,
        buttonStyle: NeumorphicStyle(
          shape: NeumorphicShape.concave,
          boxShape: NeumorphicBoxShape.circle(),
        ),
      ),
      body: Center(
        child: Text("The Recipes For The Category"),
      ),
    );
  }
}
