import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/views/home_page.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../constants/themes.dart';
import '../controller/product_controller.dart';

class DetailsPage extends ConsumerWidget {
  const DetailsPage({super.key, required this.getIndex});
  final int getIndex;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(currentIndexProvider);
    final product = ref.watch(productNotifierProvider);

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: bSecondaryColor,
        title: const Text(
          "Details Page",
          style: TextStyle(color: Colors.white),
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              width: double.infinity,
              color: bLightBackground,
              child: Image.asset(product[getIndex].imgUrl),
            ),
            Container(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product[getIndex].title,
                    style: AppTheme.bBigTitle.copyWith(color: bPrimaryColor),
                  ),
                  const Gap(12),
                  Row(
                    children: [
                      RatingBar(
                        initialRating: 1,
                        itemSize: 20,
                        allowHalfRating: true,
                        minRating: 1,
                        maxRating: 5,
                        ratingWidget: RatingWidget(
                          full: const Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          half: const Icon(
                            Icons.star_half_sharp,
                            color: Colors.amber,
                          ),
                          empty: const Icon(
                            Icons.star_border,
                            color: Colors.amber,
                          ),
                        ),
                        onRatingUpdate: (value) => null,
                      ),
                      const Gap(12),
                      const Text('125 Reviews'),
                    ],
                  ),
                  const Gap(8),
                  Text(product[getIndex].longDescription),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$${product[getIndex].price}".toString(),
                        style:
                            AppTheme.bHeadingOne.copyWith(color: bPrimaryColor),
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.do_not_disturb_on_outlined,
                              size: 30,
                            ),
                          ),
                          Text(
                            product[getIndex].qty.toString(),
                            style: AppTheme.bCardTitle.copyWith(fontSize: 24),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add_circle_outline,
                              size: 30,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: bPrimaryColor,
                        minimumSize: const Size(double.infinity, 50)),
                    onPressed: () {},
                    child: const Text(
                      "Add Item to cart",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
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
