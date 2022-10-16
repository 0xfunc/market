// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:market/constants.dart';
import 'package:market/screens/home/components/image_banner.dart';
import 'package:market/screens/home/components/product_tile.dart';
import 'package:market/shared/search_field.dart';
import 'package:market/shared/tab_bar_text.dart';
import 'package:market/size_config.dart';

class DiscoverScreen extends StatefulWidget {
  static const String routeName = 'discover_screen';

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  // Dots indicator
  int _current = 0;

  final List<Widget> cards = [
    ImageBanner(
        image:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKwOJeWg7Fen-malKThtr7ZbiF8UgeI9aQhibJmnzs9B51eSyqfoezyKoWPTUouisH1a0&usqp=CAU'),
    ImageBanner(
        image:
            'https://cdnb.artstation.com/p/assets/images/images/028/692/321/medium/vineet-joshi-shoes-banner.jpg?1595238969'),
    ImageBanner(
        image:
            'https://cdn.dribbble.com/users/1515327/screenshots/7363400/shoes_banner.jpg'),
  ];

  // Category Tabs
  final List<String> tabs = <String>[
    'Top picks',
    'Free items',
    'Instant Buy',
    'Following',
    'Nearby',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryWhiteColor,
        body: DefaultTabController(
          length: tabs.length,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(25.0),
                          vertical: getProportionateScreenHeight(
                            15.0,
                          ),
                        ),
                        child: SearchField(),
                      ),
                      CarouselSlider(
                        items: cards,
                        options: CarouselOptions(
                          height: getProportionateScreenHeight(170.0),
                          autoPlay: true,
                          viewportFraction: 0.9,
                          enlargeCenterPage: false,
                          onPageChanged: (index, reason) {
                            setState(() {
                              _current = index;
                            });
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: cards.asMap().entries.map(
                          (entry) {
                            return Container(
                              width: getProportionateScreenWidth(6.0),
                              height: getProportionateScreenHeight(6.0),
                              margin: EdgeInsets.symmetric(
                                vertical: getProportionateScreenHeight(10.0),
                                horizontal: getProportionateScreenWidth(4.0),
                              ),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: kPrimaryBlackColor.withOpacity(
                                  _current == entry.key ? 1 : 0.5,
                                ),
                              ),
                            );
                          },
                        ).toList(),
                      ),
                    ],
                  ),
                ),
                SliverAppBar(
                  toolbarHeight: 0.0,
                  pinned: true,
                  snap: false,
                  floating: false,
                  bottom: TabBar(
                    isScrollable: true,
                    indicatorPadding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(10.0),
                    ),
                    indicatorColor: kPrimaryBlackColor,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      color: kLightGrayColor,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    labelPadding: EdgeInsets.symmetric(
                      vertical: getProportionateScreenHeight(10.0),
                      horizontal: getProportionateScreenWidth(20.0),
                    ),
                    tabs: tabs
                        .map((String name) => TabBarText(
                              text: name,
                            ))
                        .toList(),
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: tabs.map(
                (String name) {
                  return SafeArea(
                    top: false,
                    bottom: false,
                    child: Builder(
                      builder: (BuildContext context) {
                        return CustomScrollView(
                          slivers: [
                            SliverGrid.count(
                              crossAxisCount: 2,
                              childAspectRatio: 0.76,
                              children: [
                                ProductTile(
                                  productImage:
                                      'https://static.nike.com/a/images/c_limit,w_400,f_auto/t_product_v1/d81fee2a-e014-4fa1-9f6c-1870e8554a07/image.jpg',
                                  productName:
                                      "Nike Air Jordan 1 Mid 'Taxi White Black' ",
                                  productPrice: '\$199.00',
                                  profileImage:
                                      'https://static.nike.com/a/images/f_jpg,q_auto:eco/61b4738b-e1e1-4786-8f6c-26aa0008e80b/swoosh-logo-black.png',
                                  username: 'Nike',
                                ),
                                ProductTile(
                                  productImage:
                                      'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/06b4dabb-adc1-4430-90a7-e43d6c41a087/air-jordan-1-elevate-high-shoes-rKPNHR.png',
                                  productName:
                                      "Nike Air Jordan 1 Elevate High 'White Black' ",
                                  productPrice: '\$239.00',
                                  profileImage:
                                      'https://static.nike.com/a/images/f_jpg,q_auto:eco/61b4738b-e1e1-4786-8f6c-26aa0008e80b/swoosh-logo-black.png',
                                  username: 'Nike',
                                ),
                                ProductTile(
                                  productImage:
                                      'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/7f8ee038-906a-47a9-8296-be17b4bdda94/air-jordan-1-retro-high-og-shoes-G8hcQx.png',
                                  productName:
                                      "Nike Air Jordan 1 Retro High OG 'Wolf Grey' ",
                                  productPrice: '\$255.00',
                                  profileImage:
                                      'https://static.nike.com/a/images/f_jpg,q_auto:eco/61b4738b-e1e1-4786-8f6c-26aa0008e80b/swoosh-logo-black.png',
                                  username: 'Nike',
                                ),
                                ProductTile(
                                  productImage:
                                      'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/46a8985d-c228-4e83-8240-24909739b763/air-jordan-1-elevate-low-shoes-XlkVrM.png',
                                  productName:
                                      "Nike Air Jordan 1 Elevate Low 'Maroon White' ",
                                  productPrice: '\$219.00',
                                  profileImage:
                                      'https://static.nike.com/a/images/f_jpg,q_auto:eco/61b4738b-e1e1-4786-8f6c-26aa0008e80b/swoosh-logo-black.png',
                                  username: 'Nike',
                                ),
                                ProductTile(
                                  productImage:
                                      'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/dd9615d3-241c-4a2c-bc4a-74f9f6b81d84/air-jordan-xxxvii-pf-basketball-shoes-rthNXn.png',
                                  productName:
                                      "Nike Air Jordan XXXVII PF 'Black Club Purple Dark' ",
                                  productPrice: '\$269.00',
                                  profileImage:
                                      'https://static.nike.com/a/images/f_jpg,q_auto:eco/61b4738b-e1e1-4786-8f6c-26aa0008e80b/swoosh-logo-black.png',
                                  username: 'Nike',
                                ),
                                ProductTile(
                                  productImage:
                                      'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/c133276d-9a7b-4b4e-a6b5-117f097d8d41/air-jordan-3-retro-shoes-lnD0DV.png',
                                  productName:
                                      "Nike Air 3 Jordan 'Grey Fire Red' ",
                                  productPrice: '\$299.00',
                                  profileImage:
                                      'https://static.nike.com/a/images/f_jpg,q_auto:eco/61b4738b-e1e1-4786-8f6c-26aa0008e80b/swoosh-logo-black.png',
                                  username: 'Nike',
                                ),
                              ],
                            )
                          ],
                        );
                      },
                    ),
                  );
                },
              ).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
