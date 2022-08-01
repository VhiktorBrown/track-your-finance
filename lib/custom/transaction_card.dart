import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fintech/custom/transaction_item.dart';
import 'package:flutter_fintech/providers/transactions.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

class TransactionCard extends StatefulWidget {
  final double height;

  const TransactionCard({Key? key, required this.height}) : super(key: key);

  @override
  State<TransactionCard> createState() => _TransactionCardState();
}

class _TransactionCardState extends State<TransactionCard> {
  late int _date = 16;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final providedTransactions = Provider.of<Transactions>(context);

    return Positioned(
      bottom: 0,
      left: mediaQuery.size.width*.03,
      child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        width: mediaQuery.size.width*.94,
        height: mediaQuery.size.height * widget.height,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          )
        ),
        child: Column(
          children: [
            //Container that holds 'SEE ALL' text and other widgets
            Container(
              height: 60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 8,
                      right: 12
                    ),
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  //Date text and Arrows under SEE ALL...
                  Padding(
                    padding: EdgeInsets.all(6),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: (){
                            setState(() {
                              _date--;
                            });
                          },
                          child: const Icon(Icons.arrow_left),
                        ),
                        Text(
                          "$_date ${DateFormat('MMMM yyyy').format(DateTime.now())}",
                          style: const TextStyle(
                            fontFamily: 'Raleway',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            _date++;
                          },
                          child: const Icon(Icons.arrow_right),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: providedTransactions.transactions.length,
                  itemBuilder: (context, i){
                    return TransactionItem(transaction: providedTransactions.transactions[i]);
              }),
            ),
          ],
        )
      ),

    );
  }
}
