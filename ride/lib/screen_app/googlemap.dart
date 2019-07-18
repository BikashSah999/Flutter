import "package:flutter/material.dart";
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Googlemap extends StatefulWidget {
  @override
  _GooglemapState createState() => _GooglemapState();
}

class _GooglemapState extends State<Googlemap> {
  GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
          child: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
      );
  }
}