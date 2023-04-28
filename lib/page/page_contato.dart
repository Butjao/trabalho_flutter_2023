import 'package:flutter/material.dart';
import 'package:trabalho1/confs/routes.dart';
import 'package:trabalho1/model/contato.dart';
import 'package:trabalho1/page/page_cadastro_contato.dart';
import 'package:trabalho1/page/page_mapa.dart';

class PageContato extends StatefulWidget {
  const PageContato({super.key});

  @override
  State<PageContato> createState() => _PageContatoState();
}

class _PageContatoState extends State<PageContato> {
  List<Contato> listaContato = _listaContatoMock
      .map((e) => Contato(
          nome: e['nm_pessoa'], lat: e['nr_latitude'], lng: e['nr_longitude']))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contatos"),
        actions: [
          IconButton(
            icon: const Icon(Icons.add_circle), //botao criar contato
            onPressed: () async {
              var pop = await Navigator.of(context).pushNamed(ADD_CONTATO);

              if (pop is Contato) {
                setState(() {
                  listaContato.add(pop);
                });
              }
            },
          )
        ],
      ),
      body: ListView.separated(
        //lista
        separatorBuilder: (context, index) => const Divider(height: 1),
        itemCount: listaContato.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.person),
            title: Text(listaContato[index].nome),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return PageMapa( //passa o contato clicado pro mapa
                    param: listaContato[index],
                  );
                },
              ));
            },
          );
        },
      ),
    );
  }
}

List<Map<String, dynamic>> _listaContatoMock = [
  {
    "nm_pessoa": "Marcos",
    "nr_longitude": -52.427590,
    "nr_latitude": -28.270635,
  },
  {
    "nm_pessoa": "Lucas",
    "nr_longitude": -52.418307,
    "nr_latitude": -28.267213,
  },
  {
    "nm_pessoa": "Antonio",
    "nr_longitude": -52.378982,
    "nr_latitude": -28.260056,
  },
  {
    "nm_pessoa": "Jeferson A.",
    "nr_longitude": -52.374200,
    "nr_latitude": -28.282380,
  },
  {
    "nm_pessoa": "Monica",
    "nr_longitude": -52.371455,
    "nr_latitude": -28.258870,
  },
  {
    "nm_pessoa": "Samara",
    "nr_longitude": -52.370594,
    "nr_latitude": -28.239792,
  },
  {
    "nm_pessoa": "Mateus",
    "nr_longitude": -52.438477,
    "nr_latitude": -28.225571,
  },
  {
    "nm_pessoa": "Cesar",
    "nr_longitude": -52.410802,
    "nr_latitude": -28.247571,
  },
  {
    "nm_pessoa": "Osmar",
    "nr_longitude": -52.428767,
    "nr_latitude": -28.260935,
  },
  {
    "nm_pessoa": "José",
    "nr_longitude": -52.427358,
    "nr_latitude": -28.266005,
  },
  {
    "nm_pessoa": "Eduardo",
    "nr_longitude": -52.422832,
    "nr_latitude": -28.264399,
  },
  {
    "nm_pessoa": "Mauricio",
    "nr_longitude": -52.390460,
    "nr_latitude": -28.269436,
  },
  {
    "nm_pessoa": "Caio",
    "nr_longitude": -52.382364,
    "nr_latitude": -28.283410,
  }
];
