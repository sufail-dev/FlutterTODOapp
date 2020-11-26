import 'package:flutter/material.dart';
class NewTransactions extends StatelessWidget {
  final Function addTx;
  final titleController=TextEditingController();
  final amountController=TextEditingController();
  NewTransactions(this.addTx);
  @override
  Widget build(BuildContext context) {
    return          Card(
              elevation: 12,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    TextField(decoration:InputDecoration(labelText: 'title'),
                    controller: titleController,
                    // onChanged: (val){
                    //   titleText=val;
                    // }, 
                    ),
                    TextField(decoration:InputDecoration(labelText: 'Amount'),
                    controller: amountController,
                    // onChanged: (val){
                    //   amountText=val;
                    // }, 
                     ),
                    FlatButton(

                      child: Text('Add Transaction'),
                      onPressed: (){
                        addTx(titleController.text,double.parse(amountController.text));
                      },
                    ),
                  ],
                ),
              ),
            );
    
  }
}