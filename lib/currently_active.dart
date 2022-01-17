import 'dart:html';

import 'package:flutter/material.dart';
import 'package:package_tracker/section_title.dart';

class CurrentlyActive extends StatelessWidget {
  const CurrentlyActive({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: 'Currently Active', press: () {}),
        SizedBox(height: 20),
        Container(
          height: 300,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                ...List.generate(
                  5,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: ActiveCard(
                        category: 'Active Package',
                        image: '',
                        numOfBrands: 156,
                        press: () {}),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class ActiveCard extends StatelessWidget {
  final String category;
  final String image;
  final int numOfBrands;
  final GestureTapCallback press;
  const ActiveCard({
    Key key,
    @required this.category,
    @required this.image,
    @required this.numOfBrands,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                  color: Colors.greenAccent,
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
                          child: Image.asset(
                              'assets/png-clipart-ride-to-send-delivery-brother-cartoon-characters-shunfeng-courier-thumbnail.png'),
                        ),
                        Text.rich(
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
                              TextSpan(text: "$numOfBrands Brands\n"),
                              TextSpan(text: "$numOfBrands Brands\n"),
                              TextSpan(text: "$numOfBrands Brands\n"),
                            ],
                          ),
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
                                  TextSpan(text: 'From\n'),
                                  TextSpan(text: 'Jakarta'),
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
                                  TextSpan(text: 'Destionation\n'),
                                  TextSpan(text: 'Pekalingan'),
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
    );
  }
}
