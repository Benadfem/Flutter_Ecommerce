import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../constants/themes.dart';
import '../constants/widgets/ads_banner_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bSecondaryColor,
        title: SvgPicture.asset(
          'assets/general/store_brand_white.svg',
          color: bWhiteColor,
          width: 180.0,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.local_mall_outlined),
              color: Colors.white,
            ),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              //ads banner section
              AdsBannerWidget()
              // chip section
              //hot sales section
              //featured sections
            ],
          ),
        ),
      ),
    );
  }
}
