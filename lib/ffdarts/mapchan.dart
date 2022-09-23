import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapchanWidget extends StatefulWidget {
  const MapchanWidget({Key? key}) : super(key: key);

  @override
  _MapchanWidgetState createState() => _MapchanWidgetState();
}

class _MapchanWidgetState extends State<MapchanWidget> {

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: MapSample(),
      ),
    );
  }
}

class MapSample extends StatefulWidget {
  const MapSample({Key? key}) : super(key: key);

  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  late GoogleMapController _controller;
  //初期位置
  final CameraPosition _kGooglePlex = const CameraPosition(
    target: LatLng(43.0686606, 141.3485613),
    zoom: 14,
  );

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      mapType: MapType.normal,
      //myLocationEnabled: true,//現在位置をマップ上に表示
      initialCameraPosition: _kGooglePlex,
      onMapCreated: (GoogleMapController controller) {
        _controller = controller;
      },
      zoomControlsEnabled: false,
    );
  }
}