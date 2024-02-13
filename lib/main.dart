import 'package:flutter/material.dart';
import 'package:flutter_shop/pages/products_overview_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData(
      fontFamily: 'Lato',
    );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(
        primary: Colors.purple,
        secondary: Colors.deepOrange,
      )),
      home: ProductsOverViewPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
