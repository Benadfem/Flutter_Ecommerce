import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../themes.dart';

class AdsBannerWidget extends StatelessWidget {
  const AdsBannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 160.0,
      decoration: BoxDecoration(
        color: bPrimaryColor,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Apple Store', style: AppTheme.bBigTitle),
                  const Gap(8.0),
                  Text(
                    'Find he Apple products and accessories you are looking for',
                    style: AppTheme.bBodyText.copyWith(color: bWhiteColor),
                  ),
                  const Gap(4.0),
                  MaterialButton(
                    color: bWhiteColor,
                    elevation: 2.0,
                    onPressed: () {},
                    child: const Text('Shop new year'),
                  ),
                ],
              ),
            ),
          ),
          Image.asset('assets/general/landing.png'),
        ],
      ),
    );
  }
}
