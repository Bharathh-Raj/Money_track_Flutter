import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/trans.dart';


class transaction_list extends StatelessWidget {
  List<Transaction> trans=[];

  transaction_list({this.trans});

  @override
  Widget build(BuildContext context) {
    return Container(
                  height: 320,
                  child: ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                          margin: EdgeInsets.all(5),
                          elevation: 3,
                          child: Row(
                            children: <Widget>[
                              Container(
                                //height: 30,
                                width: 70,
                                padding: EdgeInsets.all(6),
                                margin: EdgeInsets.symmetric(
                                    vertical: 6, horizontal: 15),
                                child: Text('${trans[index].amount.toStringAsFixed(0)}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                        color: Colors.purple)),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.purple, width: 2),
                                ),
                              ),
                              Container(
                                width:200,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,                              
                                  children: <Widget>[
                                    Text(trans[index].title,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontSize: 18)),
                                    Text(
                                        DateFormat.yMd()
                                            .format(trans[index].time),
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12)),
                                  ],
                                ),
                              ),
                              IconButton(icon: Icon(Icons.delete_outline),
                              onPressed: (){},)
                            ],
                          ));
                    },
                    itemCount: trans.length,
                  ),
                );
  }
}