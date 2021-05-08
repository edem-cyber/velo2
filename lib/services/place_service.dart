import 'dart:convert';
import 'package:velo2/models/place_model.dart';
import 'package:http/http.dart' as http;
import 'package:geolocator/geolocator.dart';

class PlacesService {
  static final _sevice = new PlacesService();
  static PlacesService get() {
    return _sevice;
  }

  String latitudeData;
  String longitudeData;
  String locationData;

  getLatLong() async {
    var geoposition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    latitudeData = '${geoposition.latitude}';
    longitudeData = '${geoposition.longitude}';
    String locationData = latitudeData + ',' + longitudeData;
    return locationData;
  }

  String apiKey = 'AIzaSyCejtyjpP1L2Y4L6ojcrI_zkTz8Q8XVN98';

  String searchURL =
      'https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=${PlacesService().getLatLong()}&rankby=distance&type=pharmacy&key=' +
          PlacesService().apiKey;

  var places;
  // Future<List<Place>> getNearbyPlaces() async {
  //   var response =
  //       await http.get(searchURL, headers: {"Accept": "application/json"});
  //   var places = <Place>[];
  //   List data = json.decode(response.body)["results"];
  //   data.forEach((f) => places.add(new Place(
  //       f["icon"], f["name"], f["rating"], f["vicinity"], f["place_id"])));
  //   return places;
  // }
}
