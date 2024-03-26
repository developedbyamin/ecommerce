import 'package:ecommerce/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:ecommerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:ecommerce/common/widgets/layouts/grid_layout.dart';
import 'package:ecommerce/common/widgets/products/product_card/product_card_vertical.dart';
import 'package:ecommerce/common/widgets/texts/section_heading.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/home_categories.dart';
import 'package:ecommerce/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:ecommerce/utils/constants/image_strings.dart';
import 'package:ecommerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
             EPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// AppBar
                  const EHomeAppBar(),
                  const SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),

                  /// -- Searchbar
                  const ESearchContainer(text: 'Search'),
                  const SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),

                  /// -- Categories
                  Padding(
                    padding: const EdgeInsets.only(left: ESizes.defaultSpace),
                    child: Column(
                      children: [
                        /// -- Heading
                        ESectionHeading(
                          title: 'Categories',
                          showActionButton: false,
                          onPressed: (){},
                          textColor: Colors.white,
                        ),
                        const SizedBox(
                          height: ESizes.spaceBtwItems,
                        ),

                        /// Categories
                        const EHomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            /// Body
            Padding(
              padding: const EdgeInsets.all(ESizes.defaultSpace),
              child: Column(
                children: [
                  const EPromoSlider(
                    banners: [
                      EImages.promoBanner1,
                      EImages.promoBanner2,
                      EImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(
                    height: ESizes.spaceBtwSections,
                  ),
                  ESectionHeading(
                    title: 'Popular Products',
                    showActionButton: true,
                    onPressed: (){},
                  ),
                  /// Popular Products
                  EGridLayout(
                    itemCount: 2,
                    itemBuilder: (_,index) => const EProductCardVertical() ,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// 25:58