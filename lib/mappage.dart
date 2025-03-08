// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// class Mappage extends StatefulWidget {
//   const Mappage({super.key});
//
//   @override
//   State<Mappage> createState() => _Mappage();
// }
//
// class _Mappage extends State<Mappage> {
//   late GoogleMapController mapController;
//   static const LatLng _initialPosition = LatLng(37.7749, -122.4194);
//
//   CameraPosition _initialCameraPosition = CameraPosition(
//     target: _initialPosition,
//     zoom: 12,
//   );
//
//   void _onMapCreated(GoogleMapController controller) {
//     mapController = controller;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Google Map in Flutter'),
//       ),
//       body: GoogleMap(
//         initialCameraPosition: _initialCameraPosition,
//         onMapCreated: _onMapCreated,
//         myLocationEnabled: true,
//         myLocationButtonEnabled: true,
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mappage extends StatefulWidget {
  const Mappage({super.key});

  @override
  State<Mappage> createState() => _Mappage();
}

class _Mappage extends State<Mappage> {
  late GoogleMapController mapController;
  static const LatLng _initialPosition = LatLng(37.7749, -122.4194);

  CameraPosition _initialCameraPosition = CameraPosition(
    target: _initialPosition,
    zoom: 12,
  );

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Map in Flutter'),
      ),
      body: GoogleMap(
        initialCameraPosition: _initialCameraPosition,
        onMapCreated: _onMapCreated,
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
        zoomControlsEnabled: false,
      ),
    );
  }
}
