import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class new_transaction extends StatelessWidget {
  final TextEditingController inptitle=TextEditingController();
  final TextEditingController inpamount=TextEditingController();
  
  final Function addfun;
  new_transaction(this.addfun);

  void btclick(){
    double temp=double.parse(inpamount.text.toString());

    if(inptitle==null && temp <= 0)
      return;

    addfun(inptitle.text,temp);
  }


  @override
  Widget build(BuildContext context) {
    return Card(
          child: Column(
                    children: <Widget>[
                      TextField(
                          controller: inptitle,
                          decoration: InputDecoration(labelText: 'Title'),
                          maxLength: 15,
                          ),
                      TextField(
                          controller: inpamount,
                          decoration: InputDecoration(labelText: 'Amount'),
                          keyboardType:TextInputType.number,
                          onSubmitted:(_)=>btclick(),

                          ),
                      FlatButton(
                        
                        child: Text('Add transaction',style:TextStyle(color:Colors.purple)),
                        color:Colors.white,
                        onPressed: btclick,
                      ),
                    ],
                  ),
    );
  }
}