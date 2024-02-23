import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SquareTile extends StatelessWidget {
  final String imagePath;
  const SquareTile({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        height: 100,
        width: 100,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.grey[200],border:Border.all(color: Colors.white)
        ),

        child: Image.asset(imagePath,height: 40)
        
        );
  }
}
