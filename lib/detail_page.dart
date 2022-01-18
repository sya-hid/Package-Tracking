import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latlong/latlong.dart';
import 'package:package_tracker/peta.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  LatLng point = LatLng(0.621, 101.417);
  var location = [];
  bool loc = false;
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> deliveryStatus = [
      {
        "status": "In Process - Recipient City",
        "location": "Pekalongan, Indonesia"
      },
      {"status": "Transit - Sending City", "location": "Jakarta, Indonesia"},
      {"status": "Send from Jakarta", "location": "Jakarta, Indonesia"},
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Mackbook Pro 13 Inch M1',
                    style: GoogleFonts.poppins().copyWith(fontSize: 14),
                  ),
                  Text(
                    'No. 8665 7628 8782 9728',
                    style: GoogleFonts.poppins()
                        .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.withOpacity(0.1),
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.play_arrow_rounded,
                        color: Colors.orangeAccent,
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'From',
                            style: GoogleFonts.poppins()
                                .copyWith(color: Colors.grey.withOpacity(0.5)),
                          ),
                          Text(
                            'Jl. Merdeka Timur No.17',
                            style: GoogleFonts.poppins().copyWith(fontSize: 18),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Destination',
                              style: GoogleFonts.poppins().copyWith(
                                  color: Colors.grey.withOpacity(0.5))),
                          Text(
                            'Jl. Ahmaad Yani',
                            style: GoogleFonts.poppins().copyWith(fontSize: 18),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Peta(point: point,zoom: 15,),
              ),
            ),
            SizedBox(height: 20),
            Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Delivery Status',
                  style: GoogleFonts.poppins().copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                ...List.generate(
                  deliveryStatus.length,
                  (index) => Container(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Row(
                      children: [
                        Icon(
                          Icons.adjust_rounded,
                          color: Colors.orangeAccent,
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(deliveryStatus[index]['status'],
                                style: GoogleFonts.poppins().copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                )),
                            Text(deliveryStatus[index]['location'],
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 14,
                                    color: Colors.grey.withOpacity(0.5))),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
