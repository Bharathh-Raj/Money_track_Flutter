import 'package:flutter/material.dart';
import 'package:money_track/widgets/user_transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Money_Track'),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.add_box),
              onPressed: (){},)
            ],
            ),
            body: ListView(
              children: <Widget>[
                Card(
                  child: Container(
                      height: 30, child: Center(child: Text('Chart'))),
                  elevation: 2,
                ),
                user_transactions(),
              ],
            ),
            floatingActionButtonLocation : FloatingActionButtonLocation.endFloat,
                floatingActionButton:FloatingActionButton(
                  child: Icon(Icons.add),
                  onPressed: null,
                )
            ));
  }
}
