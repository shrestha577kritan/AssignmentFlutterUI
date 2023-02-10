import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FavoutirePage extends StatefulWidget {
  const FavoutirePage({super.key});

  @override
  State<FavoutirePage> createState() => _FavoutirePageState();
}

class _FavoutirePageState extends State<FavoutirePage> {
  int add = 0;
  int sub = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 252, 250, 250),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 219, 205, 205)
                                .withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 2),
                          ),
                        ],

                        // ),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Icon(
                          CupertinoIcons.back,
                          size: 30,
                        ),
                      ),
                    ),
                    Container(
                      height: 40.h,
                      width: 45.w,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 252, 250, 250),
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 219, 205, 205)
                                .withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 2),
                          ),
                        ],

                        // ),
                        // ),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Icon(
                          CupertinoIcons.heart,
                          color: Colors.red,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Text(
                  'Chipotle Cheesy Chicken',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                      color: Colors.black),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              Center(
                child: Text(
                  'A signature flame-grilled chicken patty topped\nwith smoked beef',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                      color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Center(
                child: Image.asset(
                  'assets/burger.png',
                  height: 200.h,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: ReuseSizes(
                        Text(
                          'S',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15,color: Colors.grey),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ReuseSizes(
                        Text(
                          'M',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15,color: Colors.grey),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ReuseSizes(
                        Text(
                          'L',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15,color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 130.w,
                  ),
                  FloatingActionButton.small(
                    backgroundColor: Colors.red,
                    onPressed: () {
                      setState(() {
                        add++;
                      });
                    },
                    child: Icon(
                      Icons.add,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 7.w,
                  ),
                  Text('$add',style: TextStyle(color: Colors.grey),),
                  SizedBox(
                    width: 10.w,
                  ),
                  FloatingActionButton.small(
                    backgroundColor: Colors.red,
                    onPressed: () {
                      setState(() {
                        add--;
                      });
                    },
                    child: Center(
                      child: Icon(
                        Icons.remove,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60.h,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Price',
                          style: TextStyle(color: Colors.grey, fontSize: 22),
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        Text(
                          'Rs.140',
                          style: TextStyle(
                              color: Colors.grey.shade900, fontSize: 25),
                        ),
                      ],
                    ),
                    Container(
                      height: 50.h,
                      width: 130.w,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 224, 24, 9),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.shopping_bag,
                              size: 30,
                              color: Colors.white,
                            ),
                            Text(
                              'Go To Cart',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 18),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container ReuseSizes(
    Text value,
  ) {
    return Container(
      height: 35.h,
      width: 40.w,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 252, 250, 250),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 219, 205, 205).withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Center(
        child: value,
      ),
    );
  }
}
