import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latlong/latlong.dart';
import 'package:package_tracker/peta.dart';
import 'package:package_tracker/section_title.dart';

class CurrentlyActive extends StatelessWidget {
  const CurrentlyActive({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTitle(text: 'Currently Active', press: () {}),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              // height: 300,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    ...List.generate(
                      5,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: ActiveCard(
                            name: 'Macbook Pro 13 inchi mahal',
                            currentlocation: 'Gateway Jakarta',
                            status: 'Received At Origin Gateway',
                            nopaket: '0578 7363 9867',
                            press: () {}),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ActiveCard extends StatelessWidget {
  final String name, nopaket, currentlocation, status;
  final GestureTapCallback press;
  const ActiveCard({
    Key key,
    @required this.press,
    @required this.name,
    @required this.nopaket,
    @required this.currentlocation,
    @required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LatLng point = LatLng(0.621, 101.417);
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 220,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            // decoration: BoxDecoration(
                            //     borderRadius: BorderRadius.circular(20)),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Peta(
                                  point: point,
                                  zoom: 10,
                                )),
                          ),
                          SizedBox(width: 15),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '$name',
                                maxLines: 1,
                                style: GoogleFonts.poppins().copyWith(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey),
                              ),
                              Text('No. $nopaket',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                              Text('$status',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey)),
                              Text('$currentlocation',
                                  style: GoogleFonts.poppins().copyWith(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.grey)),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.play_arrow_rounded,
                                  size: 48.0,
                                  color: Colors.orangeAccent,
                                ),
                                SizedBox(width: 10),
                                Text.rich(
                                  TextSpan(children: [
                                    TextSpan(
                                        text: 'From\n',
                                        style: GoogleFonts.poppins().copyWith(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey)),
                                    TextSpan(
                                        text: 'Jakarta',
                                        style: GoogleFonts.poppins().copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 18,
                            color: Colors.grey,
                          ),
                          Container(
                            child: Row(
                              children: [
                                Icon(Icons.location_on,
                                    size: 32, color: Colors.blueAccent),
                                SizedBox(width: 10),
                                Text.rich(
                                  TextSpan(children: [
                                    TextSpan(
                                        text: 'Destionation\n',
                                        style: GoogleFonts.poppins().copyWith(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey)),
                                    TextSpan(
                                        text: 'Pekalongan',
                                        style: GoogleFonts.poppins().copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
