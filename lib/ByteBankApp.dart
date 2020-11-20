import 'package:flutter/material.dart';
import 'package:bytebank/widgets/transfer/TransferForm.dart';

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add),
            ),
            body: TransferForm()));
  }
}
