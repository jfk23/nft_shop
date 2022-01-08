import 'package:flutter/material.dart';
import 'package:nft_shop/constants/colors.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: RawMaterialButton(
        onPressed: () {},
        child: const Text(
          'Buy it Now',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        fillColor: buttonColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
