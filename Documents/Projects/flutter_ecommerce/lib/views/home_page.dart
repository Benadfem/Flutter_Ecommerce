import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../constants/themes.dart';
import '../constants/widgets/ads_banner_widget.dart';
import '../constants/widgets/chip_widget.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              //ads banner section
              const AdsBannerWidget(),
              // chip section
              SizedBox(
                height: 60.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: const [
                    ChipWidget(chipLabel: "All"),
                    ChipWidget(chipLabel: "Computers"),
                    ChipWidget(chipLabel: "Headset"),
                    ChipWidget(chipLabel: "Accesories"),
                    ChipWidget(chipLabel: "Printing"),
                    ChipWidget(chipLabel: "Cameras"),
                  ],
                ),
              ),
              //hot sales section
              const Gap(5.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'HotSales',
                    style: AppTheme.bHeadingOne,
                  ),
                  Text(
                    'SeeAll',
                    style: AppTheme.bSeeAll,
                  )
                ],
              ),
              const Gap(12),
              Container(
                color: Colors.amber,
                height: 270,
                child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => const Text('sampleText'),
                ),
              ),

              //featured sections
            ],
          ),
        ),
      ),
    );
  }
}
