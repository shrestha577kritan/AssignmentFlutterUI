import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PoularFood extends StatefulWidget {
  final String name;
  final String image;

  PoularFood({required this.image, required this.name});

  @override
  State<PoularFood> createState() => _PoularFoodState();
}

class _PoularFoodState extends State<PoularFood> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          widget.image,
          height: 100.h,
        ),
        SizedBox(
          height: 5.h,
        ),
        Text(
          widget.name,
          style:
              TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 18.sp),
        ),
        SizedBox(
          height: 15.h,
        ),
        Container(
          height: 30.h,
          width: 30.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 204, 174, 174).withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 5,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: InkWell(
            onTap: () {},
            child: Center(
              child: Icon(CupertinoIcons.forward),
            ),
          ),
        ),
      ],
    );
  }
}
