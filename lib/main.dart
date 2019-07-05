import 'package:flutter/material.dart';
import './widgets/transaction_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  //String titleInput;
  //String amountInput;

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('CHART'),
              elevation: 5,
            ),
          ),
          Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Title',
                    ),
                    controller: titleController,
                    //onChanged: (value) {
                    //  titleInput = value;
                    //},
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Amount',
                    ),
                    controller: amountController,
                    //onChanged: (value) {
                    //  amountInput = value;
                    //},
                  ),
                  FlatButton(
                    child: Text('Add transaction'),
                    textColor: Colors.purple,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          TransactionList(),
        ],
      ),
    );
  }
}
