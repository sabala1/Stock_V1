import 'package:flutter/material.dart';

class StockPage extends StatefulWidget {
  const StockPage({ Key? key }) : super(key: key);

  @override
  State<StockPage> createState() => _StockPageState();
}

class _StockPageState extends State<StockPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('StockHome')
      ),
      
    );
  }
}