import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              Card(
                child: ListTile(
                  leading: Icon(Icons.monetization_on),
                  title: Text('Titulo do Item'),
                  subtitle: Text('Subtitulo do Item'),
                ),
              ),Card(
                child: ListTile(
                  leading: Icon(Icons.monetization_on),
                  title: Text('Titulo do Item'),
                  subtitle: Text('Subtitulo do Item'),
                ),
              ),Card(
                child: ListTile(
                  leading: Icon(Icons.monetization_on),
                  title: Text('Titulo do Item'),
                  subtitle: Text('Subtitulo do Item'),
                ),
              ),
            ],
          ),
          appBar: AppBar(title: Text('Transferências')),
        ),
      ),
    );
