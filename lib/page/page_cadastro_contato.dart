import 'package:flutter/material.dart';
import 'package:trabalho1/model/contato.dart';

class PageCadastroContato extends StatefulWidget {
  const PageCadastroContato({super.key});

  @override
  State<PageCadastroContato> createState() => _PageCadastroContatoState();
}

class _PageCadastroContatoState extends State<PageCadastroContato> {
  final _nomeController = TextEditingController();
  final _latController = TextEditingController();
  final _lngController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nova aula"),
        actions: [
          IconButton(
            icon: const Icon(Icons.save_rounded),
            onPressed: () {
              Navigator.pop(
                context,
                Contato(
                  nome: _nomeController.text,
                  lat: double.parse(_latController.text),
                  lng: double.parse(_lngController.text),
                ),
              );
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(children: [
          TextFormField(
            controller: _nomeController,
            decoration: const InputDecoration(
              labelText: 'Nome',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          TextFormField(
            controller: _latController,
            decoration: const InputDecoration(
              labelText: 'Latitude',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          TextFormField(
            controller: _lngController,
            decoration: const InputDecoration(
              labelText: 'Longitude',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
        ]),
      ),
    );
  }
}
