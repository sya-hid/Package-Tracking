import 'package:flutter/material.dart';
import 'package:package_tracker/section_title.dart';

class ShortStats extends StatelessWidget {
  const ShortStats({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> short = [
      {
        "color": Colors.blue,
        "numOfBrands": 156,
        "category": "Active Package",
        "image":
            "assets/png-clipart-ride-to-send-delivery-brother-cartoon-characters-shunfeng-courier-thumbnail.png"
      },
      {
        "color": Colors.orange,
        "numOfBrands": 16,
        "category": "Sended Package",
        "image":
            "assets/png-clipart-ride-to-send-delivery-brother-cartoon-characters-shunfeng-courier-thumbnail.png"
      },
    ];
    return Column(
      children: [
        SectionTitle(text: 'Short Stats', press: () {}),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                short.length,
                (index) => ShortStatsCard(
                    color: short[index]['color'],
                    category: short[index]['category'],
                    image: short[index]['image'],
                    numOfBrands: short[index]['numOfBrands'],
                    press: () {}),
              ),
              SizedBox(width: 20)
            ],
          ),
        )
      ],
    );
  }
}

class ShortStatsCard extends StatelessWidget {
  final String category, image;
  final int numOfBrands;
  final Color color;
  final GestureTapCallback press;
  const ShortStatsCard({
    Key key,
    @required this.category,
    @required this.numOfBrands,
    @required this.press,
    @required this.color,
    this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: 272,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 50,
            width: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset("$image"),
            ),
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: '$numOfBrands\n',
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                TextSpan(text: '$category'),
              ],
            ),
          ),
          Icon(Icons.arrow_forward_ios_rounded)
        ],
      ),
    );
  }
}
