import '../models/transactions.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class TransactionList extends StatelessWidget {
 
final List<Transactions> transaction;
TransactionList(this.transaction);

 
  @override
  Widget build(BuildContext context) {
    return           Container(
      height: 300,
      child: ListView.builder(
        itemBuilder:(bdx,index){
          return
        } ,
                children: transaction.map((tx) {
                  return Card(
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.purple,
                              width: 2,
                            ),
                          ),
                          padding: EdgeInsets.all(10),
                          child: Text(
                            'A:${tx.price}',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              tx.title,
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            Text(DateFormat().format(tx.date),style: TextStyle(color: Colors.grey),),
                          ],
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
    );
  }
}