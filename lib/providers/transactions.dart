import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Transaction {
  final int id;
  final String title;
  final double value;
  final String category;
  final IconData icon;
  final Color color;

  Transaction({
  required this.id,
  required this.title,
  required this.value,
  required this.category,
  required this.icon,
  required this.color
  });
}

class Transactions with ChangeNotifier {
  final List<Transaction> _transactions = [

    Transaction(
      id: 1,
      title: "Payment for DSTV subscription.",
      value: 340,
      category: "Entertainment",
      icon: Icons.tv,
      color: const Color(0xfff57b51)
    ),
    Transaction(
        id: 2,
        title: "Investing into Syticks",
        value: 250000,
        category: "Business",
        icon: Icons.business,
        color: const Color(0xff40bad5)
    ),
    Transaction(
        id: 3,
        title: "Breakfast for I and Momma",
        value: 230,
        category: "Food",
        icon: Icons.fastfood,
        color: const Color(0xffe8505b)
    ),
    Transaction(
        id: 4,
        title: "Drinking water for the month",
        value: 190,
        category: "Water",
        icon: Icons.water_outlined,
        color: const Color(0xfff6d743)
    ),
    Transaction(
        id: 5,
        title: "Birthday Gift for Amara",
        value: 78,
        category: "Gift",
        icon: Icons.card_giftcard_outlined,
        color: const Color(0xfffe91ca)
    ),
    Transaction(
        id: 6,
        title: "Paid Rental for Syticks Office Space",
        value: 1050,
        category: "Business",
        icon: Icons.business,
        color: const Color(0xff40bad5)
    ),
    Transaction(
        id: 7,
        title: "Foodstuff for the next 2 weeks",
        value: 556.5,
        category: "Food",
        icon: Icons.fastfood,
        color: const Color(0xffe8505b)
    ),


  ];

  List<Transaction> get transactions {
    return _transactions;
  }

  double _height = .56;
  double get height {
    return _height;
  }
  double _opacity = .9;
  double get opacity {
    return _opacity;
  }

  _addTransaction(){
    _height = 0.08;
    _opacity = 1;
  }
  _done(){
    _height = 0.56;
    _opacity = 1;
  }
}