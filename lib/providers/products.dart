// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:iworkslab/providers/product.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 'p1',
      title: 'Sausage',
      description:
          'A sausage is a type of meat product usually made from ground meat—often pork, beef, or poultry—along with salt, spices and other flavourings.',
      price: 29.99,
      imageUrl:
          'https://media.istockphoto.com/photos/sausages-picture-id1310971056?b=1&k=20&m=1310971056&s=170667a&w=0&h=JzQPBiik4ke02MDkhl94noQafiqwTXlgR_FEkY8hF88=',
    ),
    Product(
      id: 'p2',
      title: 'Salami',
      description:
          'Salami is a cured sausage consisting of fermented and air-dried meat, typically pork',
      price: 59.99,
      imageUrl:
          'https://4.imimg.com/data4/IG/FS/MY-9650223/pork-salami-500x500.jpg',
    ),
    Product(
        id: 'p3',
        title: 'Chicken Breast',
        description:
            'chicken breast is a lean cut of meat taken from the pectoral muscle on the underside of the chicken. ',
        price: 19.99,
        imageUrl:
            'https://www.licious.in/blog/wp-content/uploads/2021/01/chicken-breast-price-2.jpg'),
    Product(
      id: 'p4',
      title: 'Sausage',
      description:
          'A sausage is a type of meat product usually made from ground meat—often pork, beef, or poultry—along with salt, spices and other flavourings.',
      price: 29.99,
      imageUrl:
          'https://media.istockphoto.com/photos/sausages-picture-id1310971056?b=1&k=20&m=1310971056&s=170667a&w=0&h=JzQPBiik4ke02MDkhl94noQafiqwTXlgR_FEkY8hF88=',
    ),
    Product(
      id: 'p5',
      title: 'Salami',
      description:
          'Salami is a cured sausage consisting of fermented and air-dried meat, typically pork',
      price: 59.99,
      imageUrl:
          'https://4.imimg.com/data4/IG/FS/MY-9650223/pork-salami-500x500.jpg',
    ),
    Product(
        id: 'p6',
        title: 'Chicken Breast',
        description:
            'chicken breast is a lean cut of meat taken from the pectoral muscle on the underside of the chicken. ',
        price: 19.99,
        imageUrl:
            'https://www.licious.in/blog/wp-content/uploads/2021/01/chicken-breast-price-2.jpg'),
    Product(
      id: 'p7',
      title: 'Sausage',
      description:
          'A sausage is a type of meat product usually made from ground meat—often pork, beef, or poultry—along with salt, spices and other flavourings.',
      price: 29.99,
      imageUrl:
          'https://media.istockphoto.com/photos/sausages-picture-id1310971056?b=1&k=20&m=1310971056&s=170667a&w=0&h=JzQPBiik4ke02MDkhl94noQafiqwTXlgR_FEkY8hF88=',
    ),
    Product(
      id: 'p8',
      title: 'Salami',
      description:
          'Salami is a cured sausage consisting of fermented and air-dried meat, typically pork',
      price: 59.99,
      imageUrl:
          'https://4.imimg.com/data4/IG/FS/MY-9650223/pork-salami-500x500.jpg',
    ),
    Product(
        id: 'p9',
        title: 'Chicken Breast',
        description:
            'chicken breast is a lean cut of meat taken from the pectoral muscle on the underside of the chicken. ',
        price: 19.99,
        imageUrl:
            'https://www.licious.in/blog/wp-content/uploads/2021/01/chicken-breast-price-2.jpg'),
    Product(
      id: 'p10',
      title: 'Sausage',
      description:
          'A sausage is a type of meat product usually made from ground meat—often pork, beef, or poultry—along with salt, spices and other flavourings.',
      price: 29.99,
      imageUrl:
          'https://media.istockphoto.com/photos/sausages-picture-id1310971056?b=1&k=20&m=1310971056&s=170667a&w=0&h=JzQPBiik4ke02MDkhl94noQafiqwTXlgR_FEkY8hF88=',
    ),
    Product(
      id: 'p11',
      title: 'Salami',
      description:
          'Salami is a cured sausage consisting of fermented and air-dried meat, typically pork',
      price: 59.99,
      imageUrl:
          'https://4.imimg.com/data4/IG/FS/MY-9650223/pork-salami-500x500.jpg',
    ),
    Product(
        id: 'p12',
        title: 'Chicken Breast',
        description:
            'chicken breast is a lean cut of meat taken from the pectoral muscle on the underside of the chicken. ',
        price: 19.99,
        imageUrl:
            'https://www.licious.in/blog/wp-content/uploads/2021/01/chicken-breast-price-2.jpg'),
  ];

  // var _showFavoritesOnly = false;

  List<Product> get items {
    // if (_showFavoritesOnly) {
    //   return _items.where((prodItem) => prodItem.isFavorite).toList();
    // } else {
    return [..._items];
    // }
  }

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  // void showFavoritesOnly() {
  //   _showFavoritesOnly = true;
  //   notifyListeners();
  // }

  // void showAll() {
  //   _showFavoritesOnly = false;
  //   notifyListeners();
  // }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }
}
