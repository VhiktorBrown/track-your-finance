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
        id: 1,
        title: "Breakfast for I and Momma",
        value: 230,
        category: "Food",
        icon: Icons.fastfood,
        color: const Color(0xffe8505b)
    ),

  ];

  List<Transaction> get transactions {
    return _transactions;
  }
}