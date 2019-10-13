import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';
import '../models/trans.dart';

class user_transactions extends StatefulWidget {
  @override
  _user_transactionsState createState() => _user_transactionsState();
}

class _user_transactionsState extends State<user_transactions> {

  List<Transaction> trans = [
    Transaction(amount: 250, id: "t1", time: DateTime.now(), title: "Lunch"),
    Transaction(amount: 50, id: "t2", time: DateTime.now(), title: "Dinner"),
    Transaction(amount: 1250, id: "t3", time: DateTime.now(), title: "WI-FI"),
  ];

void add_newTransaction(String txtitle, double txamount){
  Transaction newtrans=Transaction(
    amount: txamount,
    title:txtitle,
    time:DateTime.now(),
    id:DateTime.now().toString(),
  );

  setState(() {
    trans.add(newtrans);
  });
}
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new_transaction(add_newTransaction),
        transaction_list(trans: trans,),
      ],
    );
  }
}