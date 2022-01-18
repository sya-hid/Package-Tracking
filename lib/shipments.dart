import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:package_tracker/currently_active.dart';
import 'package:package_tracker/detail_page.dart';

class ShipmentsPage extends StatefulWidget {
  const ShipmentsPage({Key key, @required this.title}) : super(key: key);
  final String title;

  @override
  _ShipmentsPageState createState() => _ShipmentsPageState();
}

class _ShipmentsPageState extends State<ShipmentsPage> {
  List<Map<String, String>> type = [
    {"text": "All", "status": "active"},
    {"text": "Shipping ", "status": "nonactive"},
    {"text": "To be shipped", "status": "nonactive"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications_active_outlined,
              color: Colors.black,
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
            child: Text.rich(TextSpan(children: [
              TextSpan(
                  text: 'Your ',
                  style: GoogleFonts.poppins().copyWith(fontSize: 24)),
              TextSpan(
                  text: 'Shipments',
                  style: GoogleFonts.poppins()
                      .copyWith(fontSize: 24, fontWeight: FontWeight.bold))
            ])),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              ...List.generate(
                type.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      color: type[index]['status'] == "active"
                          ? Colors.orangeAccent
                          : Colors.black.withOpacity(0.1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
                      child: Text(
                        type[index]['text'],
                        style: GoogleFonts.poppins().copyWith(
                            fontSize: 16,
                            color: type[index]['status'] == "active"
                                ? Colors.white
                                : Colors.black45),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
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
                            name: 'Macbook Pro 13 inch',
                            currentlocation: 'Gateway Jakrta',
                            status: 'Received At Origin Gateway',
                            nopaket: '0578 7363 9867',
                            press: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailPage()));
                            }),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20)
        ],
      ),
    );
  }
}
