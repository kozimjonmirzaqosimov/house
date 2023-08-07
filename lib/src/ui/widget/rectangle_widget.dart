import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RectangleWidget extends StatelessWidget {
  const RectangleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300,
          height: 190,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/rentage.png",
                  width: 300,
                  height: 190,
                  fit: BoxFit.cover,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  "assets/images/blackfone.png",
                  width: 300,
                  height: 190,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 43,
                left: 23,
                child: Container(
                  width: 130,
                  child: Text("Halloween Sale!",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white)),
                ),
              ),
              Positioned(
                left: 23,
                top: 85,
                child: Text("All discount up to 60%",
                    style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.white)),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: 93,
                  height: 56,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(20),),
                  color: Color(0xff234F68)
                  ),
                  child: Icon(Icons.arrow_right_alt,color: Colors.white,),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
