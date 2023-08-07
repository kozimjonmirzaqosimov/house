import 'package:flutter/material.dart';

class AgentsWidget extends StatelessWidget {
  final String image;
  final String name;
  const AgentsWidget({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 75,
      height: 100,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              image,
              width: 70,
              height: 70,
            ),),
          SizedBox(height: 8,),
          Text(name),
        ],
      ),
    );
  }
}
