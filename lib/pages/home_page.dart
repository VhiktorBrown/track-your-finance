import 'package:flutter/material.dart';
import 'package:flutter_fintech/custom/header.dart';
import 'package:flutter_fintech/custom/new_transaction.dart';
import 'package:flutter_fintech/custom/transaction_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double height = .57;
  double _opacity = .9;

   _addTransaction(){
    // setState(() {
    //   height = 0.08;
    //   _opacity = 1;
    // });
  }

  _done(){
    setState(() {
      height = .57;
      _opacity = .9;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(_opacity),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.short_text),
          // If icon is pressed...
          onPressed: (){

          },
        ),
        title: const Text(
          "My Personal Finance",
          style: TextStyle(
            fontFamily: 'Raleway',
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.person_outline))
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Header(addTransaction: _addTransaction()),
            ],
          ),
          TransactionCard(height: height),
        ],
      ),
    );
  }
}
