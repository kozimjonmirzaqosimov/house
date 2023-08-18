import 'package:flutter/material.dart';
import 'package:house/src/ui/widget/agents_widget.dart';
import 'package:house/src/ui/widget/category_widget.dart';
import 'package:house/src/ui/widget/estates_widget.dart';
import 'package:house/src/ui/widget/location_widget.dart';
import 'package:house/src/ui/widget/rectangle_widget.dart';
import '../widget/rend_widget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  bool like = false;
  bool _numberInputIsValid = true;

  final int _greedCount = 2;

  List data = [1, 2, 3, 4, 5, 6, 7];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:ListView(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54),
                      borderRadius: BorderRadius.circular(20)),
                  width: 163,
                  child: ExpansionTile(
                    title: Text("hgjf"),
                    leading: Icon(Icons.location_on),
                    children: [
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff8BC83F)),
                      borderRadius: BorderRadius.circular(50)),
                  width: 50,
                  height: 50,
                  child: Icon(Icons.notifications_on),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(50)),
                    child: Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset('assets/images/sharpa.png')),
                    )),
              ],
            ),
            Text("Hey, Jonathan!",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                )),
            Text("Let's start exploring  ",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                )),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListTile(
                title: TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter an integer:',
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 65,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xff234F68)),
                        child: Center(
                            child: Text(
                          "All",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 85,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xff234F68)),
                        child: Center(
                            child: Text(
                          "House",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 85,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xff234F68)),
                        child: Center(
                            child: Text(
                          "House",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 105,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xff234F68)),
                        child: Center(
                            child: Text(
                          "Apartment",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 85,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xff234F68)),
                        child: Center(
                            child: Text(
                          "House",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        )),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 190,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6,
                itemBuilder: (BuildContext context, int index) {
                  return  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RectangleWidget(
                        image: "assets/images/rentage.png", name: "name", sale: "sale"),
                  );
                },

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                      "Featured Estates",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      )
                  ),
                  Spacer(),
                  Text(
                      "view all",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Colors.blueAccent
                      )
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 270,
                child: ListView.builder(
                  itemCount: 7,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return EstateWidget(
                      location: "Jakarta, Indonesia",
                      name: "name",
                      full_name: 'Sky Dandelions Apartment',
                      star: 4.9,
                      prise: 295,
                      image: "assets/images/sharpa.png",
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                      "Top Locations",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      )
                  ),
                  Spacer(),
                  Text(
                      "explore",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent
                      )
                  )
                ],
              ),
            ),
            SizedBox(
              height: 60,
              child: ListView.builder(
                itemCount: 7,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index) {
                    return LocationWidget(image: "assets/images/uylar.png", name: "Jakarta");
                  }
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                      "Top Estate Agent",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      )
                  ),
                  Spacer(),
                  Text(
                      "explore",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueAccent
                      )
                  )
                ],
              ),
            ),
            SizedBox(
              height: 80,
              child: ListView.builder(
                  itemCount: 7,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,index) {
                    return AgentsWidget(image: "assets/images/uylar.png", name: "name");
                  }
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: (data.length + _greedCount - 1) ~/ _greedCount,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: RentWidget(
                            price: '290',
                            image: 'assets/images/uylar.png',
                            name: 'Wings Tower',
                            star: 5,
                            location: 'Jakarta, Indonesia',
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: index * _greedCount + 1 >= data.length
                              ? SizedBox(
                            width: 160,
                          )
                              : RentWidget(
                            price: '290',
                            image: 'assets/images/uylar.png',
                            name: 'Wings Tower',
                            star: 5,
                            location: 'Jakarta, Indonesia',
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}
