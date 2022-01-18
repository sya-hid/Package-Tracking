import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class Peta extends StatelessWidget {
  final double zoom;
  const Peta({
    Key key,
    @required this.point,
    @required this.zoom,
  }) : super(key: key);

  final LatLng point;

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        // onTap: (p) async {
        //   location = await Geocoder.local
        //       .findAddressesFromCoordinates(
        //           new Coordinates(p.latitude, p.longitude));
        //   setState(() {
        //     point = p;
        //     print(p);
        //   });
        //   loc = true;
        //   print(
        //       "${location.first.countryName} - ${location.first.locality} - ${location.first.featureName}");
        // },
        enableMultiFingerGestureRace: true,
        center: LatLng(0.621, 101.417),
        zoom: zoom,
      ),
      layers: [
        TileLayerOptions(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c']),
        MarkerLayerOptions(
          markers: [
            Marker(
              width: 30.0,
              height: 30.0,
              point: point,
              builder: (ctx) => Container(
                child: Icon(
                  Icons.location_on,
                  color: Colors.orange,
                  size: 46,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
