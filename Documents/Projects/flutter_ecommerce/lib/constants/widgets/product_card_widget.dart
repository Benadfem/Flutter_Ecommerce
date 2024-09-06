import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../themes.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      height: 290.0,
      width: double.infinity,
      child: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) => Container(
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
          margin: const EdgeInsets.all(12.0),
          width: MediaQuery.of(context).size.width * 0.5,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(8.0),
                  color: bLightBackground,
                  child: Image.asset('assets/products/airpods.jpg'),
                ),
              ),
              const Gap(4.0),
              Container(
                padding: const EdgeInsets.only(left: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Product name',
                        overflow: TextOverflow.ellipsis,
                        style: AppTheme.bCardTitle),
                    Text(
                      'Short description product',
                      style: AppTheme.bBodyText,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          '\$500',
                          style: AppTheme.bCardTitle,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.add_circle))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
