import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';
class Coordenadas extends StatelessWidget {
  const Coordenadas({super.key});

  

@override
Widget build(BuildContext context) {
  return FlutterMap(
    options: MapOptions(
      center: LatLng(51.509364, -0.128928),
      zoom: 9.2,
    ),
    nonRotatedChildren: [
      RichAttributionWidget(
        attributions: [
          TextSourceAttribution(
            'OpenStreetMap contributors',
            onTap: () => launchUrl(Uri.parse('https://openstreetmap.org/copyright')),
          ),
        ],
      ),
    ],
    children: [
      TileLayer(
        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        
      ),
    ],
  );
}
}