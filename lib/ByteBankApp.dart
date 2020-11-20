import 'package:flutter/material.dart';

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

class TransferForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criando transferência'),
      ),
    );
  }
}

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

class TransferItem extends StatelessWidget {
  final Transfer transfer;

  const TransferItem({Key key, this.transfer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(transfer.value.toString()),
        subtitle: Text(transfer.accountNumber.toString()),
      ),
    );
  }
}

class Transfer {
  final double value;
  final int accountNumber;

  Transfer(this.value, this.accountNumber);
}
