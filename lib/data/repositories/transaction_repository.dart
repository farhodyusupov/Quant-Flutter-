import 'package:dio/dio.dart';
import 'dart:async';

import 'package:quant_flutter_new/data/model/lists.dart';

import '../model/transaction.dart';
class TransactionRepository{
  List<Transaction> transactions = [
    Transaction(image: "assets/icons/beeline.png",number:  "+998 90 438 22 08",paymentTo:  "Beeline",summ:  15000),
    Transaction(image: "assets/icons/uzmobile.png",number:  "+998 99 438 22 08",paymentTo:  "Uzmobile",summ:  10000),
    Transaction(image: "assets/icons/mobiuz.png", number: "+998 88 438 22 08", paymentTo: "Mobiuz", summ: 20000),
    Transaction(image: "assets/icons/mobiuz.png",number:  "+998 88 438 22 08",paymentTo:  "Mobiuz",summ:  20000),
    Transaction(image: "assets/icons/mobiuz.png", number: "+998 88 438 22 08", paymentTo: "Mobiuz", summ: 20000),
    Transaction(image: "assets/icons/mobiuz.png",number:  "+998 88 438 22 08",paymentTo:  "Mobiuz",summ:  20000),


  ];
  Dio dio = Dio();
  List<Transaction>getTransactions() {
    Duration(milliseconds: 2000);
    /*
    * API berilganda uncomment qilish kerak
    * */
  // Response transactionData =await dio.get("path");
  // Transaction transaction = Transaction.fromJson(transactionData.data);
      return transactions;
  }
}