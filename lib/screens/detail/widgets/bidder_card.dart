import 'package:flutter/material.dart';
import 'package:nft_shop/constants/colors.dart';
import 'package:nft_shop/models/bidder.dart';
import 'dart:math';
import 'package:intl/intl.dart';

class BidderCard extends StatelessWidget {
  final Bidder bidder;
  const BidderCard(this.bidder, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final random = Random();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: randomPinkList[random.nextInt(9) + 1],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Bid placed by ${bidder.name!}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  '${DateFormat.yMMMMd().format(bidder.date!)} at ${bidder.date!.hour} : ${bidder.date!.minute}',
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
              ],
            )
          ],
        ),
        Text(
          '${bidder.price!} ETH',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            
          ),
        )
      ],
    );
  }
}
