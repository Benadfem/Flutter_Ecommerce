import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/controller/product_controller.dart';
import 'package:flutter_ecommerce/views/details_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:flutter_svg/svg.dart';

import '../constants/themes.dart';
import '../constants/widgets/ads_banner_widget.dart';
import '../constants/widgets/chip_widget.dart';
import '../constants/widgets/product_card_widget.dart';

final currentIndexProvider = StateProvider<int>((ref) {
  return 0;
});

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(productNotifierProvider);
    final currentIndex = ref.watch(currentIndexProvider);
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
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
                height: 45.0,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'HotSales',
                    style: AppTheme.bHeadingOne,
                  ),
                  Text(
                    'See all',
                    style: AppTheme.bSeeAll,
                  )
                ],
              ),

              Container(
                padding: const EdgeInsets.all(4.0),
                height: 280.0,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: products.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>
                      ProductCardWidget(productIndex: index),
                ),
              ),

              //featured sections
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Feature Products',
                    style: AppTheme.bHeadingOne,
                  ),
                  Text(
                    'See all',
                    style: AppTheme.bSeeAll,
                  )
                ],
              ),
              MasonryGridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: products.length,
                shrinkWrap: true,
                gridDelegate:
                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsPage(getIndex: index))),
                  child: SizedBox(
                    height: 250.0,
                    child: ProductCardWidget(productIndex: index),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) =>
              ref.read(currentIndexProvider.notifier).update((state) => value),
          selectedItemColor: bPrimaryColor,
          unselectedItemColor: bSecondaryColor,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              activeIcon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: 'Favourite',
              activeIcon: Icon(Icons.favorite),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined),
              label: 'Location',
              activeIcon: Icon(Icons.location_on),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_outlined),
              label: 'Notification',
              activeIcon: Icon(Icons.notifications),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: 'Profile',
              activeIcon: Icon(Icons.person),
            ),
          ]),
    );
  }
}
