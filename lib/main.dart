import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_2/provider/counter_view_model.dart';
import 'package:provider_2/provider/provoder_counter.dart';
import 'package:provider_2/ui/products/products_page.dart';
import 'package:provider_2/view_model/products_view_model.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CounterViewModel()),
      ChangeNotifierProvider(create: (context) => ProductsViewModel() ),
    ],
    child: const MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Productspage(),
    );
  }
}