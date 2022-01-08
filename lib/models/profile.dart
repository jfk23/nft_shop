import 'package:nft_shop/models/bidder.dart';

import 'art.dart';

class Profile {
  String? imgUrl;
  String? name;
  String? twitter;
  String? desc;
  String? email;
  List<Art>? creations;
  List<Art>? collections;

  Profile({
    this.imgUrl,
    this.name,
    this.twitter,
    this.desc,
    this.email,
    this.creations,
    this.collections,
  });

  static Profile generateProfile() {
    return Profile(
        imgUrl: 'assets/images/avatar.png',
        name: 'Alexy Prefontain',
        twitter: '@aeforia',
        desc: '3D artist from Montrael, Canada. His Work is all about fantasy!',
        email: 'aeforia@msn.com',
        creations: [
          Art(
            imgUrl: 'assets/images/create1.jpeg',
            name: 'Consume',
            price: 1.54,
            desc: 'So happy to share my second collab with my dear daughter',
            birds: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
          Art(
            imgUrl: 'assets/images/create2.jpeg',
            name: 'Consume1',
            price: 2.54,
            desc: 'So happy to share my second collab with my dear daughter',
            birds: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
          Art(
            imgUrl: 'assets/images/create3.jpeg',
            name: 'Consume2',
            price: 3.54,
            desc: 'So happy to share my second collab with my dear daughter',
            birds: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
          Art(
            imgUrl: 'assets/images/create4.jpeg',
            name: 'Consume3',
            price: 4.54,
            desc: 'So happy to share my second collab with my dear daughter',
            birds: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
          Art(
            imgUrl: 'assets/images/create5.jpeg',
            name: 'Consume4',
            price: 5.54,
            desc: 'So happy to share my second collab with my dear daughter',
            birds: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
        ],
        collections: [
          Art(
            imgUrl: 'assets/images/collection1.jpeg',
            name: 'Consume',
            price: 1.54,
            desc: 'So happy to share my second collab with my dear daughter',
            birds: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
          Art(
            imgUrl: 'assets/images/collection2.jpeg',
            name: 'Consume1',
            price: 2.54,
            desc: 'So happy to share my second collab with my dear daughter',
            birds: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
          Art(
            imgUrl: 'assets/images/collection3.jpeg',
            name: 'Consume2',
            price: 3.54,
            desc: 'So happy to share my second collab with my dear daughter',
            birds: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
          Art(
            imgUrl: 'assets/images/collection4.jpeg',
            name: 'Consume3',
            price: 4.54,
            desc: 'So happy to share my second collab with my dear daughter',
            birds: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
          Art(
            imgUrl: 'assets/images/collection5.jpeg',
            name: 'Consume4',
            price: 5.54,
            desc: 'So happy to share my second collab with my dear daughter',
            birds: Bidder.generateBidder(),
            history: Bidder.generateHistory(),
          ),
        ]);
  }
}
