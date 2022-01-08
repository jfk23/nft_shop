import 'package:flutter/material.dart';
import 'package:nft_shop/models/art.dart';
import 'package:nft_shop/models/profile.dart';

class ArtInfo extends StatelessWidget {
  final Art art;
  ArtInfo(this.art, {Key? key}) : super(key: key);
  final Profile profile = Profile.generateProfile();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          art.name!,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            _buildIconText(
              profile.imgUrl!,
              0,
              'Creator',
              profile.twitter!.substring(1),
            ),
            const SizedBox(
              width: 101,
            ),
            _buildIconText(
              'assets/images/eth.png',
              8,
              'Current Bid',
              '${art.price} ETH',
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          art.desc!,
          style: const TextStyle(
            color: Colors.black87,
            height: 1.3,
            wordSpacing: 3,
          ),
        )
      ]),
    );
  }

  _buildIconText(String imgUrl, double padding, String title, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 40,
          height: 40,
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey[200],
          ),
          child: Image.asset(imgUrl),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                color: Colors.black45,
              ),
            ),
            Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        )
      ],
    );
  }
}
