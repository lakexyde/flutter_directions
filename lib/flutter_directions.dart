library flutter_directions;

import 'package:url_launcher/url_launcher.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' show LatLng;

class FlutterDirections {

  static void navigate(LatLng from, LatLng to, {bool iOS = false}) async{
    assert(from != null);
    assert(to != null);

    String qs = "?saddr=${from.latitude},${from.longitude}&daddr=${to.latitude},${to.longitude}&directionsmode=driving";

    String aU = Uri.encodeFull("http://maps.google.com/maps$qs");
    String sU = "comgooglemaps://$qs";
    
    if(await canLaunch(sU)){
      print(sU);
      await launch(sU);
    } else {
      print(aU);
      await launch(aU);
    }
  }
}
