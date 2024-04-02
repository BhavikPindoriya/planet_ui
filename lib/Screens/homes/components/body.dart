// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:planet_ui/Components/header_with_searchbox.dart';
import 'package:planet_ui/Screens/homes/components/featues_plan.dart';
import 'package:planet_ui/Screens/homes/components/recomendent_cart.dart';
import 'package:planet_ui/Screens/homes/components/title_with_more_btn.dart';
import 'package:planet_ui/constrants.dart';

class Body extends StatelessWidget {
  Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header_With_Searchbox(size: size),
            TitleWithMoreButton(
              Title: 'Recomended',
              press: () {},
            ),
            const RecomendensPlans(),
            TitleWithMoreButton(Title: 'Featured Plants', press: () {}),
            FeatursPlans(),
            SizedBox(
              height: kDefaultPadding,
            ),
          ],
        ),
      ),
    );
  }
}
