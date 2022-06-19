import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageURl;

  ProductItem(this.id, this.title, this.imageURl);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        leading: IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () {},
        ),
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.shopping_cart,
          ),
          onPressed: () {},
        ),
      ),
      child: Image.network(
        imageURl,
        fit: BoxFit.cover,
      ),
    );
  }
}
