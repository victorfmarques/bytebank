import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/material.dart';

const _tituloAppBar = 'Criando transferencia';

const _labelCampoNumeroConta = 'Número da conta';
const _hintCampoNumeroConta = '0000';

const _labelCampoValor = 'Valor';
const _hintCampoValor = '0.00';

const _buttonFormulario = 'Confirmar';

class FormularioTransferencia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ForumlarioTransferenciaState();
  }
}

class ForumlarioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  void _criaTransferencia(BuildContext context) {
    final int? numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
    final double? valor = double.parse(_controladorCampoValor.text);

    if (numeroConta != null && valor != null) {
      final transferenciaCriada = Transferencia(valor, numeroConta);
      Navigator.pop(context, transferenciaCriada);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_tituloAppBar),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Editor(
                controller: _controladorCampoNumeroConta,
                label: _labelCampoNumeroConta,
                hint: _hintCampoNumeroConta),
            Editor(
                controller: _controladorCampoValor,
                label: _labelCampoValor,
                hint: _hintCampoValor,
                icon: Icons.monetization_on),
            ElevatedButton(
              child: Text(_buttonFormulario),
              onPressed: () => _criaTransferencia(context),
            )
          ],
        ),
      ),
    );
  }
}
