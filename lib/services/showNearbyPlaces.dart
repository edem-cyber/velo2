// import 'package:dio/dio.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:http/http.dart' as http;

// class LocateClass {
//   String latitudeData;
//   String longitudeData;

//   getLatLong() async {
//     var geoposition = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.high);
//     latitudeData = '${geoposition.latitude}';
//     longitudeData = '${geoposition.longitude}';
//   }

// // https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=latitudeData,longitudeData&rankby=distance&type=pharmacy&key=
//   showNearbyPlaces() async {
//     String apiKey = 'AIzaSyCejtyjpP1L2Y4L6ojcrI_zkTz8Q8XVN98';

//     var dio = Dio();
//     String url =
//         'https://maps.googleapis.com/maps/api/place/nearbysearch/json?';
//     var parameters = {
//       'key': apiKey,
//       'location': '$latitudeData, $longitudeData',
//       'type': 'pharmacy',
//       'radius': '800'
//     };
//     var responsehttp = await http.get(url+parameters.toString());

//     var response = await dio.get(url, queryParameters: parameters);

//     var placesList = response.data['results']
//         .map<String>((result) => result['name'].toString())
//         .toList();
//     return placesList;
//   }
// }
