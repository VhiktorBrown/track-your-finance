import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../providers/transactions.dart';

class TransactionItem extends StatelessWidget {
  final Transaction transaction;

  const TransactionItem({Key? key, required this.transaction}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListTile(
        leading: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: transaction.color.withOpacity(.8),
            borderRadius: BorderRadius.circular(12)
          ),
          alignment: Alignment.center,
          child: Icon(
            transaction.icon,
            color: Colors.white,
            size: 20,
          ),
        ),
        title: Text(
          transaction.title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            fontFamily: 'Raleway'
          ),
        ),
        subtitle: Text(
          transaction.category,
          style: const TextStyle(
            fontSize: 12,
            fontFamily: 'Raleway'
          ),
        ),
        trailing: Text(
          '\$${transaction.value}',
          style: TextStyle(
            fontSize: 14,
            color: Theme.of(context).primaryColor,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
