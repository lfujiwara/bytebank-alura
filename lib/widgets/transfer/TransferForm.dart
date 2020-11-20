import 'package:bytebank/models/Transfer.dart';
import 'package:flutter/material.dart';

class TransferForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _accountNumberController =
        TextEditingController();
    final TextEditingController _valueController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Criando transferência'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _accountNumberController,
              style: TextStyle(fontSize: 24.0),
              decoration: InputDecoration(
                  labelText: 'Número da conta',
                  hintText: '000',
                  icon: Icon(Icons.perm_identity)),
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _valueController,
              style: TextStyle(fontSize: 24.0),
              decoration: InputDecoration(
                  labelText: 'Valor',
                  hintText: '0.00',
                  icon: Icon(Icons.monetization_on)),
              keyboardType: TextInputType.number,
            ),
          ),
          RaisedButton(
            onPressed: () {
              final int accountNumber =
                  int.tryParse(_accountNumberController.text);
              final double value = double.tryParse(_valueController.text);
              if (accountNumber != null && value != null) {
                final transfer = Transfer(value, accountNumber);
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text(
                      'Transferência de R\$ $value para conta n. $accountNumber'),
                ));
              }
            },
            child: Text(
              'Confirmar',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  color: Colors.white),
            ),
            color: Colors.green,
          )
        ],
      ),
    );
  }
}
