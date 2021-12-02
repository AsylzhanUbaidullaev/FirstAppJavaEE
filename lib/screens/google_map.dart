
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GoogleMapScreen extends StatefulWidget {

  @override
  _GoogleMapState createState() => _GoogleMapState();


  class _GoogleMapState extends State<GoogleMapScreen>{
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: Text('Google Map'),
  ),
  body: GoogleMap(initialCameraPosition: CameraPosition(target:LatLng(22.5448, 88.34),
  zoom:15,)
  ),
  }
  }

