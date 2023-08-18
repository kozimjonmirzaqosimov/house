import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  final String image;
  final String name;
  const LocationWidget({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black12,
          ),
          borderRadius: BorderRadius.circular(15)),
      width: 96,
      height: 56,
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50)
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(image,fit: BoxFit.cover,)),
          ),
          Text(name),
        ],
      ),
    );
  }
}
