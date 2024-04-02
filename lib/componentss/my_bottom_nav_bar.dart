import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planet_ui/constrants.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding,
      ),
      height: 80,
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          offset: Offset(0, -10),
          blurRadius: 35,
          color: kPrimaryColor.withOpacity(0.38),
        )
      ]),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/flower.svg')),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/heart-icon.svg')),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/user-icon.svg'))
      ]),
      // destinations: [
      //   NavigationDestination(
      //       icon: SvgPicture.asset('assets/icons/flower.svg'), label: ''),
      //   NavigationDestination(
      //       icon: SvgPicture.asset('assets/icons/heart-icon.svg'), label: ''),
      //   NavigationDestination(
      //       icon: SvgPicture.asset('assets/icons/more.svg'), label: '')
      // ],
    );
  }
}
