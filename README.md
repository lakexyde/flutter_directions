# flutter_directions

A new Flutter package that lets you open directions between coordinates on Google Maps.

[![Version](https://img.shields.io/pub/v/flutter_directions.svg)](https://pub.dartlang.org/packages/flutter_directions)

## Usage

To use this plugin, add ```flutter_directions``` as a dependency in your ```pubspec.yaml``` file.

## Example

```
import 'package:flutter/material.dart';
import 'package:flutter_directions/flutter_directions.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' show LatLng;

void main() {
  runApp(Scaffold(
    body: Center(
      child: RaisedButton(
        onPressed: _showDirections,
        child: Text('Show Directions'),
      ),
    ),
  ));
}

_showDirections() async {
    LatLng from = LatLng(37.4220041,-122.0862462);
    LatLng to = LatLng(37.4228132,-122.0871649);

    FlutterDirections.navigate(from, to);
}
```
