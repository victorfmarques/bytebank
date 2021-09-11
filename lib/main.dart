import 'package:flutter/material.dart';

void main() =>
    runApp(
      MaterialApp(
        home: Scaffold(
          body: ListaTransferencias(),
          appBar: AppBar(title: Text('Transferências')),
        ),
      ),
    );

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemTransferencia(Transferencia(100.90, 1)),
        ItemTransferencia(Transferencia(99.90, 12)),
        ItemTransferencia(Transferencia(10.90, 13)),
        ItemTransferencia(Transferencia(1.99, 41)),
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {

  Transferencia _transferencia;

  ItemTransferencia(this._transferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }
}

class Transferencia {
  final double valor;
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);
}