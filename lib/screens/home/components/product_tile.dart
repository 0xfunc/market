// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:market/constants.dart';
import '../../../size_config.dart';

class ProductTile extends StatelessWidget {
  final String productImage;
  final String profileImage;
  final String productName;
  final String productPrice;
  final String username;

  ProductTile({
    required this.productImage,
    required this.profileImage,
    required this.productName,
    required this.productPrice,
    required this.username,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(10.0),
        vertical: getProportionateScreenHeight(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: getProportionateScreenHeight(165.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
              child: Image.network(
                productImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(
            productName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            productPrice,
            style: TextStyle(
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: getProportionateScreenHeight(5.0),
            ),
            child: Row(
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(20.0),
                  width: getProportionateScreenWidth(20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(100.0),
                    ),
                    child: Image.network(
                      profileImage,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(5.0),
                ),
                Text(
                  username,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
