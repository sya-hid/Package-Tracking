import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latlong/latlong.dart';
import 'package:package_tracker/currently_active.dart';
import 'package:package_tracker/detail_page.dart';
import 'package:package_tracker/section_title.dart';
import 'package:package_tracker/short_stats.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          color: Colors.grey.withOpacity(0.2),
          icon: ClipOval(child: Image.asset("assets/profile.png")),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications_active_outlined,
              color: Colors.black,
              // size: 32,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Monitor your',
                    style: GoogleFonts.poppins().copyWith(fontSize: 22)),
                Text(
                  'Shipments today!',
                  style: GoogleFonts.poppins()
                      .copyWith(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15)),
                    child: TextField(
                      style: GoogleFonts.poppins()
                          .copyWith(fontSize: 16, color: Colors.grey),
                      autofocus: false,
                      onChanged: (value) {},
                      decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "Enter your tracking number",
                          hintStyle: GoogleFonts.poppins().copyWith(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                          prefixIcon: Icon(Icons.search),
                          contentPadding: const EdgeInsets.all(16)),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.qr_code_scanner_outlined,
                      color: Colors.white,
                    ))
              ],
            ),
          ),
          SizedBox(height: 20),
          ShortStats(),
          SizedBox(height: 20),
          // CurrentlyActive(),
          SectionTitle(text: 'Currently Active', press: () {}),
          SizedBox(height: 20),
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    ...List.generate(
                      5,
                      (index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: ActiveCard(
                            latlang: LatLng(0.621, 101.417),
                            name: 'Macbook Pro 13 inch',
                            currentlocation: 'Gateway Jakrta',
                            status: 'Received At Origin Gateway',
                            nopaket: '0578 7363 9867',
                            press: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailPage(),
                                ),
                              );
                            }),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
