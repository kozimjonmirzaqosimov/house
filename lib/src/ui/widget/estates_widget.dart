import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EstatesWidget extends StatelessWidget {
  const EstatesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 1),
          height: 156,
          width: 327,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.green,
              border:Border.all(color: Colors.black)
          ),
          child: Row(
            children: [
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    height: 140,
                    width: 168,

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),

                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset('assets/images/shape.png',fit: BoxFit.cover,)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 7,left: 18),
                    height: 20,width: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color(0xFFF5F4F8)
                    ),
                    child: Center(child: Icon(Icons.favorite_border,size: 10,),),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      margin: EdgeInsets.only(top: 110,left: 18),
                      height: 20,width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Color(0xFF1F4C6B)
                      ),
                      child: Center(child: Text('Apartment',style: TextStyle(color: Colors.white,fontSize: 7),)),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 15),
                    child: Text('Sky Dandelions',style: TextStyle(color: Color(0xFF252B5C),fontSize: 12,fontWeight: FontWeight.w700),),
                  ),
                  SizedBox(height: 5,),
                  Padding(
                    padding: const EdgeInsets.only(right: 30,left: 17),
                    child: Text('Apartment',style: TextStyle(color: Color(0xFF252B5C),fontSize: 12,fontWeight: FontWeight.w700),),
                  ),
                  SizedBox(height: 5,),
                  Row(
                    children: [
                      Icon(Icons.location_on,color: Color(0xFF252B5C),size: 12,),
                      Text('Jakarta, Indonesia',style: TextStyle(color: Color(0xFF53587A),fontSize: 8,fontWeight: FontWeight.w400),)
                    ],
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      margin: EdgeInsets.only(top: 30,left: 60),
                      width: 70,
                      height: 47,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white
                      ),
                      child: Center(child: Text('Rent',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 10),),),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
