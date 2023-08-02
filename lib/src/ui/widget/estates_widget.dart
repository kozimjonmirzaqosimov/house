import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EstateWidget extends StatelessWidget {
  const EstateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: Column(
          children: [
            Container(
              width: 270,
              height: 160,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: 140,
                        height: 150,
                        child: Image.asset("assets/images/shape.png"),
                      ),
                      Positioned(
                        left: 10,
                        top: 12,
                        child: Container(
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white70),
                          child: Icon(Icons.favorite_outline),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: Container(
                          width: 75,
                          height: 35,
                          decoration: BoxDecoration(
                              color: Color(0XFF234F68),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text("Apartment",style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w700,color: Colors.white),),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
