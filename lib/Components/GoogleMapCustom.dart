import 'dart:async';
import 'package:advanced_capital_pay/Styles/ImageStyle.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'dart:typed_data';
import 'dart:ui' as ui;
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';



class GoogleMapCustom extends StatefulWidget {
  const GoogleMapCustom({Key? key}) : super(key: key);

  @override
  _GoogleMapCustomState createState() => _GoogleMapCustomState();
}

class _GoogleMapCustomState extends State<GoogleMapCustom> {

  Completer<GoogleMapController> _controller = Completer();

  Map<MarkerId, Marker> markers = <MarkerId, Marker>{
  };

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(23.652835, 54.676684),
    zoom: 14,
  );

  // static final CameraPosition _kLake = CameraPosition(
  //   bearing: 192.8334901395799,
  //   target: LatLng(49.848171, 3.288170),
  //   tilt: 59.440717697143555,
  //   zoom: 19.151926040649414,
  // );

  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(), targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!.buffer.asUint8List();
  }

  void markerRed() {
    var markerIdVal = 'MyWayToGenerateId()';
    final MarkerId markerId = MarkerId(markerIdVal);

    // creating a new MARKER
    final Marker marker = Marker(
      markerId: markerId,
      position: LatLng(23.652835, 54.676684),
      infoWindow: InfoWindow(title: markerIdVal, snippet: '*'),
      onTap: () {
        // _onMarkerTapped(markerId);
      },
    );

    setState(() {
      markers[markerId] = marker;
    });
  }

  void markerPerson() async {
    final Uint8List markerIcon = await getBytesFromAsset(ImageStyle.markerPerson, 90);

    final MarkerId markerId = MarkerId('2');

    // creating a new MARKER
    final Marker marker = Marker(
      markerId: markerId,
      icon: BitmapDescriptor.fromBytes(markerIcon),
      position: LatLng(23.647170, 54.682478),
      infoWindow: InfoWindow(title: "Information", snippet: 'Information Description'),
      onTap: () {
        // _onMarkerTapped(markerId);
      },
    );

    setState(() {
      markers[markerId] = marker;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    markerRed();
    markerPerson();
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      // mapType: MapType.hybrid,
      initialCameraPosition: _kGooglePlex,
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
      markers: Set<Marker>.of(markers.values), // YOUR MARKS IN MAP
    );
  }
}
