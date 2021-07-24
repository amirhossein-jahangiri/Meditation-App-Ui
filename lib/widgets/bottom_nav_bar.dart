import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: 40,vertical: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomNavItem(
            title: 'Today',
            svgSrc: 'assets/icons/calendar.svg',
            press: (){},
          ),

          BottomNavItem(
            title: 'All Exercises',
            svgSrc: 'assets/icons/gym.svg',
            press: (){},
            isActive: true,
          ),

          BottomNavItem(
            title: 'Settings',
            svgSrc: 'assets/icons/Settings.svg',
            press: (){},
          ),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String? title;
  final String? svgSrc;
  final Function()? press;
  final bool? isActive;

  BottomNavItem({
    this.title,this.svgSrc,this.press,this.isActive = false,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(svgSrc! , color: isActive! ? kActiveIconColor : kTextColor,),
          Text(title! , style: TextStyle(color: isActive! ? kActiveIconColor : kTextColor),),
        ],
      ),
    );
  }
}

