import 'package:flutter/material.dart';
import 'package:package_tracker/section_title.dart';

class ShortStats extends StatelessWidget {
  const ShortStats({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: 'Short Stats', press: () {}),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                3,
                (index) => ShortStatsCard(
                    category: 'Active Package',
                    // image: image,
                    numOfBrands: 156,
                    press: () {}),
              )
            ],
          ),
        )
      ],
    );
  }
}

class ShortStatsCard extends StatelessWidget {
  final String category;
  // final String image;
  final int numOfBrands;
  final GestureTapCallback press;
  const ShortStatsCard({
    Key key,
    @required this.category,
    // @required this.image,
    @required this.numOfBrands,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: SizedBox(
        width: 242,
        height: 100,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              // Image.asset(image, fit: BoxFit.cover),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  // gradient: LinearGradient(
                  //   begin: Alignment.topCenter,
                  //   end: Alignment.bottomCenter,
                  //   colors: [
                  //     Color(0xFF343434).withOpacity(0.4),
                  //     Color(0xFF343434).withOpacity(0.15)
                  //   ],
                  // ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text.rich(
                  TextSpan(
                    style: TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                        text: "$category\n",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: "$numOfBrands Brands")
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
