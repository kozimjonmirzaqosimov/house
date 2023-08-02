
import 'package:flutter/material.dart';

import '../widget/rend_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  bool like = false;
  final int _greedCount = 2;
  List data = [1, 2, 3, 4, 5, 6, 7];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: (data.length + _greedCount - 1) ~/ _greedCount,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(width: 20,),
                      Expanded(
                        child: RentWidget(
                          price: '290',
                          image: 'assets/images/img.png',
                          name: 'Wings Tower',
                          star: 5,
                          location: 'Jakarta, Indonesia',
                        ),
                      ),
                      SizedBox(width: 10,),
                      Expanded(
                        child: index * _greedCount + 1 >=
                            data.length ?SizedBox(width: 160,): RentWidget(
                          price: '290',
                          image: 'assets/images/img.png',
                          name: 'Wings Tower',
                          star: 5,
                          location: 'Jakarta, Indonesia',
                        ),
                      ),
                      SizedBox(width: 20,),
                    ],
                  ),
                ],
              );
            },
          ),
        ],
      ),

    );
  }
}
