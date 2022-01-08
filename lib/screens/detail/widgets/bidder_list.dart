import 'package:flutter/material.dart';
import 'package:nft_shop/models/bidder.dart';

import 'bidder_card.dart';

class BidderList extends StatelessWidget {
  final String scrollKey;
  final List<Bidder> bidderList;
  const BidderList(this.scrollKey, this.bidderList, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (_, index) => BidderCard(bidderList[index]),
      separatorBuilder: (_, index) => const SizedBox(
        height: 15,
      ),
      itemCount: bidderList.length,
      key: PageStorageKey(scrollKey),
      padding: const EdgeInsets.all(20),
    );
  }
}
