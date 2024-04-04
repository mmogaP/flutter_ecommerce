import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Nike Air Max 90',
        price: '\$120',
        imagePath: 'lib/images/1.png',
        description: 'The Nike Air Max 90 is a classic.'),
    Shoe(
        name: 'Adidas Superstar',
        price: '\$100',
        imagePath: 'lib/images/2.png',
        description: 'The Adidas Superstar is a classic.'),
    Shoe(
        name: 'Vans Old Skool',
        price: '\$80',
        imagePath: 'lib/images/3.png',
        description: 'The Vans Old Skool is a classic.'),
    Shoe(
        name: 'Converse Chuck Taylor',
        price: '\$60',
        imagePath: 'lib/images/4.png',
        description: 'The Converse Chuck Taylor is a classic.'),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of items for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add item to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
