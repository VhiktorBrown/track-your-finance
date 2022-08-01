import 'package:flutter/material.dart';
import 'package:flutter_fintech/pages/home_page.dart';
import 'package:flutter_fintech/providers/transactions.dart';
import 'package:provider/provider.dart' as provider;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return provider.ChangeNotifierProvider(
      create: (context) => Transactions(),
      child: MaterialApp(
          title: 'My Finance',
          home: HomePage(),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
            fontFamily: 'Roboto',
            visualDensity: VisualDensity.adaptivePlatformDensity
          ),
      ),
    );
  }
}
