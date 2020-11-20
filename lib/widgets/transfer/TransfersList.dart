import 'package:bytebank/models/Transfer.dart';
import 'package:bytebank/widgets/transfer/TransferItem.dart';
import 'package:flutter/material.dart';

class TransfersList extends StatelessWidget {
  const TransfersList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transferências'),
      ),
      body: Column(
        children: [
          TransferItem(
            transfer: Transfer(100, 3468),
          ),
          TransferItem(
            transfer: Transfer(100, 3468),
          ),
          TransferItem(
            transfer: Transfer(100, 3468),
          ),
          TransferItem(
            transfer: Transfer(100, 3468),
          ),
        ],
      ),
    );
  }
}
