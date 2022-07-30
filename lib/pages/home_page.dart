import 'package:flutter/material.dart';
import 'package:flutter_fintech/custom/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        children: const [
          Header(),
        ],
      ),
    );
  }
}
