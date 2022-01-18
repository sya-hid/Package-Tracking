import 'package:flutter/material.dart';
import 'package:package_tracker/currently_active.dart';
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Monitor your', style: TextStyle(fontSize: 22)),
                Text(
                  'Shipments today!',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
                Container(
                  width: MediaQuery.of(context).size.width * 0.75,
                  // height: 50,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField(
                    autofocus: false,
                    onChanged: (value) {},
                    decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        hintText: "Enter your tracking number",
                        prefixIcon: Icon(Icons.search),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 9)),
                  ),
                ),
                Icon(Icons.qr_code_scanner)
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
                            name: 'Macbook Pro 13 inch',
                            currentlocation: 'Gateway Jakrta',
                            status: 'Received At Origin Gateway',
                            nopaket: '0578 7363 9867',
                            press: () {}),
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
