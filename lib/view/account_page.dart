import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                        color:
                            Color.fromARGB(255, 219, 205, 205).withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
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
                    Text('title',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),),
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
                        color:
                            Color.fromARGB(255, 204, 174, 174).withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
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
              height: 20.h,
            ),
            Column(
              children: [
                Center(
                  child: Container(
                    height: 100.h,
                    width: 120.w,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 240, 9, 9),
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 219, 205, 205)
                              .withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.person,
                      size: 60,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'KRITAN SHRESTHA',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 65.w,
                    ),
                    Text(
                      '98-xxxxxx',
                      style: TextStyle(color: Colors.grey),
                    ),
                    VerticalDivider(
                      color: Colors.black,
                      thickness: 2,
                    ),
                    Text(
                      'test@gmail.com',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 35.h,
            ),
            Text(
              'ACCOUNT',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 18),
            ),
            AccountListtile(
              Icon(
                Icons.person,
                color: Colors.grey,
              ),
              Title(
                color: Colors.grey,
                child: Text(
                  'profile',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            AccountListtile(
              Icon(
                Icons.star,
                color: Colors.grey,
              ),
              Title(
                color: Colors.grey,
                child: Text(
                  'Saved Address',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            AccountListtile(
              Icon(
                Icons.notifications,
                color: Colors.grey,
              ),
              Title(
                color: Colors.grey,
                child: Text(
                  'Notification',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              'OFFERS',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 18),
            ),
            AccountListtile(
              Icon(Icons.person),
              Title(
                color: Colors.grey,
                child: Text(
                  'Promos',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            AccountListtile(
              Icon(Icons.star),
              Title(
                color: Colors.grey,
                child: Text(
                  'Get Discounts',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              'SETTINGS',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 18),
            ),
            Expanded(
              child: AccountListtile(
                Icon(Icons.person),
                Title(
                  color: Colors.grey,
                  child: Text(
                    'Theme',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  ListTile AccountListtile(
    icon,
    titleName,
  ) {
    return ListTile(
      leading: icon,
      title: titleName,
      onTap: () {},
    );
  }
}
