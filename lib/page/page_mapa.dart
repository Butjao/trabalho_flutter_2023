import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart' as latlong2;
import 'package:trabalho1/model/contato.dart';

class PageMapa extends StatefulWidget {
  final dynamic param;

  const PageMapa({
    this.param, //param é o contato que clicou
    Key? key,
  }) : super(key: key);

  @override
  PageMapaState createState() => PageMapaState();
}

class PageMapaState extends State<PageMapa> {
  late Contato contato;
  late MapController mapController;

  @override
  void initState() {
    contato = widget.param; //contato = param

    mapController = MapController(
      initMapWithUserPosition: false,
      initPosition: GeoPoint(latitude: contato.lat, longitude: contato.lng), //seta a posicao inicial pra latitude e longitude do contato
    );

    super.initState();
  }

  addMarker() {
    mapController.addMarker( //coloca um marcador na posicao
      GeoPoint(latitude: contato.lat, longitude: contato.lng),
      markerIcon: MarkerIcon(
        icon: Icon(
          Icons.location_on_rounded,
          color: Colors.red,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MAPA'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                contato.nome,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 22.0,
                ),
              ),
            ),
            const Divider(),
            Expanded(
              child: OSMFlutter(
                controller: mapController,
                trackMyPosition: false,
                initZoom: 12,
                onMapIsReady: (p0) {
                  addMarker();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
