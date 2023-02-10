import 'package:designassignment/utitlies/available.dart';
import 'package:designassignment/utitlies/popular.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List available = [
    [
      'Burger',
      'assets/burger.png',
    ],
    [
      'Cake',
      'assets/cake.png',
    ],
    [
      'Pizza',
      'assets/pizza.png',
    ],
    [
      'Ice Cream',
      'assets/icecream.png',
    ],
  ];
  final List popular = [
    ['Chipotle Cheesy Chicken', 'Chicken Burger', 'assets/burger.png', 100],
    ['Cake', 'Velina Cake', 'assets/cake.png', 80],
    ['Ice Cream', 'Cherry Ice Cream', 'assets/icecream.png', 96],
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30.h,
                    width: 35.w,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 252, 250, 250),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 219, 205, 205)
                              .withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset('assets/menu.png'),
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.red,
                      ),
                      Text(
                        'Chicago IIL',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 15,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                  Container(
                    height: 40.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 219, 18, 18),
                      borderRadius: BorderRadius.circular(26),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 204, 174, 174)
                              .withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 5,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 18.h,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 233, 228, 228),
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 214, 205, 205)
                                .withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 5,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          border: InputBorder.none,
                          hintText: 'Search our Delicious Burger',
                          labelStyle: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 200.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: available.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        // height: 400.h,
                        width: 150.w,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 245, 240, 240),
                          borderRadius: BorderRadius.circular(40),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 204, 174, 174)
                                  .withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 5,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: PoularFood(
                          image: available[index][1],
                          name: available[index][0],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'View all >',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              Expanded(
                child: Stack(
                  children: [
                    ListView.builder(
                      itemCount: popular.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 220.h,
                            width: 350.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(40),
                              boxShadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 204, 174, 174)
                                      .withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                            child: PopularFood(
                              price: popular[index][3].toString(),
                              image: popular[index][2],
                              name: popular[index][0],
                              subtitle: popular[index][1],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
