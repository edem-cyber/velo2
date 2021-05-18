import 'package:geolocator/geolocator.dart';
import 'package:velo2/services/api_key.dart';

Future<String> getLatLong() async {
  var geoposition = await Geolocator.getLastKnownPosition();
  String latitudeData = '${geoposition.latitude}';
  String longitudeData = '${geoposition.longitude}';
  String locationData = latitudeData + ',' + longitudeData;
  return locationData;
}

realUrl() async {
  var testurl = await getLatLong();

  Uri url = Uri.parse(
    "https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=$testurl&rankby=distance&type=pharmacy&key=$apiKey");
  print(url);
  return url;
}