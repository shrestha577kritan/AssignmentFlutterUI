import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PopularFood extends StatelessWidget {
  final String image;
  final String price;
  final String name;
  final String subtitle;

  PopularFood({
    required this.image,
    required this.price,
    required this.name,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(bottom: 55, left: 10, right: 10, top: 10),
          child: Container(
            height: 150.h,
            width: 300.w,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 228, 7, 7),
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 65, 15, 15).withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 5,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: Image.asset(image),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Padding(
            padding: const EdgeInsets.only(top: 5, right: 8, left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          fontWeight: FontWeight.w900, fontSize: 15.sp),
                    ),
                    Text('Rs.${price}'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      subtitle,
                      style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
