import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_fintech/custom/expense_chart.dart';

import '../models/expense.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  static final List<charts.Series<Expense, String>> _series = [

    charts.Series<Expense, String> (
      id: 'Expense',
      domainFn: (Expense expense, _) => expense.category,
      measureFn: (Expense expense, _) => expense.value,
      labelAccessorFn: (Expense expense, _) => '\$${expense.value}',
      colorFn: (Expense expense, _) =>
          charts.ColorUtil.fromDartColor(expense.color),
      data: [
        Expense(category: 'Business', value: 84.50, color: const Color(0xff40bad5)),
        Expense(category: 'Food', value: 110.80, color: const Color(0xffe8505b)),
        Expense(category: 'Gifts', value: 31.0, color: const Color(0xfffe91ca)),
        Expense(category: 'Water', value: 43.50, color: const Color(0xfff6d743)),
        Expense(category: 'Entertainment', value: 21.0, color: const Color(0xfff57b51)),
      ]
    )

  ];

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Theme.of(context).primaryColor;
    final mediaQuery = MediaQuery.of(context);

    return Container(
      width: double.infinity,
      height: mediaQuery.size.height*0.4,
      color: primaryColor,
      
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150,
              child: ExpenseChart(_series, animate: true,),
            ),
            SizedBox(height: 14.0,),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 7, bottom: 7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(width: 1, color: Colors.white),
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.playlist_add,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        "Add Transaction",
                        style: TextStyle(
                          fontFamily: 'Ralwway',
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
