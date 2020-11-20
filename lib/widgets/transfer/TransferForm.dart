import 'package:bytebank/models/Transfer.dart';
import 'package:bytebank/widgets/transfer/TransferEditor.dart';
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
          TransferEditor(
            controller: _accountNumberController,
            label: 'Número da conta',
            hint: '000',
            iconData: Icons.perm_identity,
          ),
          TransferEditor(
              controller: _valueController,
              label: 'Valor',
              hint: '0.00',
              iconData: Icons.monetization_on),
          RaisedButton(
            onPressed: () => _createTransfer(
                _accountNumberController, _valueController, context),
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

  void _createTransfer(TextEditingController _accountNumberController,
      TextEditingController _valueController, BuildContext context) {
    final int accountNumber = int.tryParse(_accountNumberController.text);
    final double value = double.tryParse(_valueController.text);
    if (accountNumber != null && value != null) {
      final transfer = Transfer(value, accountNumber);
      Scaffold.of(context).showSnackBar(SnackBar(
        content:
            Text('Transferência de R\$ $value para conta n. $accountNumber'),
      ));
    }
  }
}
