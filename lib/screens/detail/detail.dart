import 'package:flutter/material.dart';
import 'package:nft_shop/constants/colors.dart';
import 'package:nft_shop/models/art.dart';
import 'package:nft_shop/screens/detail/widgets/art_info.dart';
import 'package:nft_shop/screens/detail/widgets/bidder_list.dart';
import 'package:nft_shop/screens/detail/widgets/buy_button.dart';
import 'package:nft_shop/screens/detail/widgets/detail_banner.dart';
import 'package:nft_shop/screens/profile/widgets/tab_sliver_delegate.dart';

class DetailPage extends StatelessWidget {
  final Art art;
  final tabs = ['Info', 'Birds', 'History'];
  DetailPage(this.art, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DefaultTabController(
        initialIndex: 1,
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                elevation: 0,
                expandedHeight: 330,
                backgroundColor: buttonColor,
                leading: _buildIcon(
                  context,
                  Icons.arrow_back_ios_outlined,
                  back: true,
                ),
                actions: [_buildIcon(context, Icons.more_vert_outlined)],
                flexibleSpace: FlexibleSpaceBar(
                  background: DetailBanner(art),
                ),
                pinned: true,
              ),
              SliverToBoxAdapter(
                child: ArtInfo(art),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: TabSliverDelegate(
                  TabBar(
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey[400],
                    indicatorColor: Colors.black,
                    labelPadding: const EdgeInsets.only(left: 0, right: 20),
                    tabs: tabs
                        .map((e) => Tab(
                              child: Text(
                                e,
                              ),
                            ))
                        .toList(),
                  ),
                ),
              )
            ];
          },
          body: TabBarView(
            children: [
              ListView(),
              BidderList('birds', art.birds!),
              BidderList('history', art.history!),
            ],
          ),
        ),
      ),
      floatingActionButton: const BuyButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _buildIcon(BuildContext context, IconData icon, {bool back = false}) {
    return IconButton(
      onPressed: back ? () => Navigator.of(context).pop() : null,
      splashRadius: 25,
      icon: Icon(
        icon,
        color: Colors.black,
        size: 20,
      ),
    );
  }
}
