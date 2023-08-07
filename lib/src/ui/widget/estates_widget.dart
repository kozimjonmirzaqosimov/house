import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EstateWidget extends StatefulWidget {
  final String location, name, full_name, month;
  final double star;
  final int prise;
  final String image;

  const EstateWidget(
      {super.key,
      required this.location,
      required this.name,
      required this.full_name,
      this.month = 'month',
      required this.star,
      required this.prise,
      required this.image});

  @override
  State<EstateWidget> createState() => _EstateWidgetState();
}

class _EstateWidgetState extends State<EstateWidget> {
  @override
  bool  _favourite =false;
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 90,
        ),
        Container(
          width: 270,
          height: 160,
          decoration: BoxDecoration(
              color: Colors.white70, borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              SizedBox(
                height: 17,
              ),
              Stack(
                children: [
                  Container(
                    width: 140,
                    height: 150,
                    child: Image.asset(widget.image),
                  ),
                  Positioned(
                    left: 10,
                    top: 12,
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          _favourite = !_favourite;
                        });
                      },
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: _favourite ? Colors.green : Colors.white),
                        child: Icon(
                          _favourite ? Icons.favorite : Icons.favorite_outline,
                          color: _favourite ? Colors.white : Colors.red,
                        ),
                      ),
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
                      child: Center(
                        child: Text(
                          widget.name,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 100,
                    child: Text(widget.full_name,
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff234F68))),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 20,
                        ),
                      ),
                      Text(
                        widget.star.toString(),
                        style: TextStyle(fontSize: 10, color: Colors.black),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.location_on,
                          size: 20,
                        ),
                      ),
                      Text(
                        widget.location,
                        style: TextStyle(fontSize: 8, color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        '\$${widget.prise}',
                        style: TextStyle(fontSize: 12, color: Colors.black),
                      ),
                      Text(
                        widget.month,
                        style: TextStyle(fontSize: 8, color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
