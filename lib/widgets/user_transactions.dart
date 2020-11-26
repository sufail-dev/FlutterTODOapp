import 'package:flutter/material.dart';
import './new_transactions.dart';
import './transaction_list.dart';
import '../models/transactions.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transactions> _userTransactions = [
    Transactions(
      id: 't1',
      title: 'shoes',
      price: 54.56,
      date: DateTime.now(),
    ),
    Transactions(
      id: 't1',
      title: 'shoes',
      price: 54.56,
      date: DateTime.now(),
    )
  ];
  void _addNewTransaction(String title, double amount) {
   final newTx= Transactions(
        title: title,
        price: amount,
        date: DateTime.now(),
        id: DateTime.now().toString());
  
    setState((){
      
            _userTransactions.add(newTx);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[NewTransactions(_addNewTransaction), TransactionList(_userTransactions)],
    );
  }
}
