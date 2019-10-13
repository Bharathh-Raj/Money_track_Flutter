import 'package:flutter/foundation.dart';

class Transaction{
  final String id;
  final String title;
  final DateTime time;
  final double amount;

  Transaction( { this.id,@required this.title,@required this.time,@required this.amount } );
}