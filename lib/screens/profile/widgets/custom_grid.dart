import 'package:flutter/material.dart';
import 'package:nft_shop/models/art.dart';
import 'package:nft_shop/screens/detail/detail.dart';

class CustomGrid extends StatelessWidget {
  final List<Art> list;
  final String scrollKey;
  const CustomGrid(this.scrollKey, this.list, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 4 / 5),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DetailPage(list[index]),
              ),
            );
          },
          child: Container(
            width: 400,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Hero(
              tag: list[index].imgUrl!,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  list[index].imgUrl!,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        itemCount: list.length,
      ),
    );
  }
}
