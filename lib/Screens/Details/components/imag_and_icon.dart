import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:planet_ui/Screens/Details/components/icon_card.dart';
import 'package:planet_ui/constrants.dart';

class ImageAndIcon extends StatelessWidget {
  const ImageAndIcon({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                          onPressed: () {},
                          icon:
                              SvgPicture.asset('assets/icons/back_arrow.svg')),
                    ),
                    const Spacer(),
                    const IconCard(icon: 'assets/icons/sun.svg'),
                    const IconCard(icon: 'assets/icons/icon_2.svg'),
                    const IconCard(icon: 'assets/icons/icon_3.svg'),
                    const IconCard(icon: 'assets/icons/icon_4.svg'),
                  ],
                ),
              ),
            ),
            Container(
              height: size.height * 0.8,
              width: size.width * 0.75,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    alignment: Alignment.bottomLeft,
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/img.png'),
                  ),
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(63),
                      topLeft: Radius.circular(63)),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 60,
                        color: kPrimaryColor.withOpacity(0.29)),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
