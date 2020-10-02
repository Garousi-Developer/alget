import 'package:alget/pages/product_page/product_view.dart';
import 'package:flutter/material.dart';

void main() {
    runApp(App());
}

class App extends StatelessWidget {
    @override
    Widget build(BuildContext context) => MaterialApp(
        home: ProductView(),
        debugShowCheckedModeBanner: false,
    );
}