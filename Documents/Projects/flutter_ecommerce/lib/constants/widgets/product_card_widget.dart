import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/controller/product_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../themes.dart';

class ProductCardWidget extends ConsumerWidget {
  const ProductCardWidget({
    required this.productIndex,
    super.key,
  });

  final int productIndex;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(productNotifierProvider);
    return Container(
      decoration: BoxDecoration(
        color: bWhiteColor,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 6),
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8.0,
            spreadRadius: 2.0,
          ),
        ],
      ),
      margin: const EdgeInsets.all(10.0),
      width: MediaQuery.of(context).size.width * 0.5,
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.all(8.0),
              color: bLightBackground,
              child: Image.asset(product[productIndex].imgUrl),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product[productIndex].title,
                    overflow: TextOverflow.ellipsis,
                    style: AppTheme.bCardTitle),
                Text(
                  product[productIndex].shortDescription,
                  style: AppTheme.bBodyText,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${product[productIndex].price}',
                      style: AppTheme.bCardTitle,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.add_circle),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
