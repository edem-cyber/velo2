


// findLocation() async {
//   Position position = await Geolocator.getLastKnownPosition();
//   print(position);
//   return position;
// }

// Future<Position> _determinePosition() async {
//   bool serviceEnabled;
//   LocationPermission permission;

//   serviceEnabled = await Geolocator.isLocationServiceEnabled();
//   if (!serviceEnabled) {
//     return Future.error('Location services are disabled., Open Settings and enable');
//   }

//   permission = await Geolocator.checkPermission();
//   if (permission == LocationPermission.deniedForever) {
//     return Future.error(
//         'Location permissions are permantly denied, cannot request permissions.');
//   }

//   if (permission == LocationPermission.denied) {
//     permission = await Geolocator.requestPermission();
//     if (permission != LocationPermission.whileInUse &&
//         permission != LocationPermission.always) {
//       return Future.error(
//           'Location permissions are denied (actual value: $permission).');
//     }
//   }

//   print(Geolocator.getLastKnownPosition);
//   return await Geolocator.getCurrentPosition();
// }
