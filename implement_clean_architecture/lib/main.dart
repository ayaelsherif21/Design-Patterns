import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'service_locator.dart';
import 'presentation/screens/product_screen.dart';
import 'presentation/viewmodels/product_viewmodel.dart';

void main() {
  setupLocator();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => sl<ProductViewModel>()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductScreen(),
    );
  }
}
