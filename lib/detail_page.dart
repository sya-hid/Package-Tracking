import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> delivery_status = [
      {
        "status": "In Process - Recipient City",
        "location": "Pekalongan, Indonesia"
      },
      {"status": "Transit - Sending City", "location": "Jakarta, Indonesia"},
      {"status": "Send from Jakarta", "location": "Jakarta, Indonesia"},
    ];
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mackbook',
                  style: TextStyle(fontSize: 14),
                ),
                Text(
                  'No. 8665 7628 8782 9728',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey,
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(Icons.play_arrow_rounded),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('From'),
                        Text(
                          'Jl. Merdeka Timur No.17',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(Icons.location_on),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Destination'),
                        Text(
                          'Jl. Ahmaad Yani',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Container(child: Text('Map'),),
          Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Delivery Status'),
                  SizedBox(height: 20),
                  ...List.generate(
                    delivery_status.length,
                    (index) => Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        children: [
                          Icon(Icons.adjust_rounded),
                          SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(delivery_status[index]['status'],
                                  style: TextStyle(fontSize: 18)),
                              Text(delivery_status[index]['location'],
                                  style: TextStyle(fontSize: 14)),
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
    );
  }
}
