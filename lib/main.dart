
import 'package:flutter/material.dart';
import './widgets/user_transactions.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter',
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  String titleText;
  String amountText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Daily App'),backgroundColor: Colors.red),
        body: SingleChildScrollView(
                  child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Card(
                  child: Text('chart'),
                  elevation: 5,
                ),
              ),
              UserTransactions()
            ],
          ),
        ));
  }
}
