import 'package:flutter/material.dart';
import 'package:package_tracker/main.dart';

class SplahScreen extends StatefulWidget {
  const SplahScreen({Key key}) : super(key: key);

  @override
  _SplahScreenState createState() => _SplahScreenState();
}

class _SplahScreenState extends State<SplahScreen> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/delivery-1417310_960_720.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              // left: 40,
              bottom: 40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        //slider
                        Expanded(
                          child: PageView.builder(
                            onPageChanged: (value) {
                              setState(() {
                                currentPage = value;
                              });
                            },
                            itemCount: 3,
                            itemBuilder: (context, index) => Container(
                              padding: const EdgeInsets.only(
                                  left: 20, right: 20, top: 40),
                              child: Column(
                                children: [
                                  Text(
                                    'Easily track your shipments in real time',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        height: 1.5,
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    'The day of delivery you can see your couriers location on a map in real time.',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        height: 2,
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        //titik 3
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            height: 10,
                            child: Column(
                              children: <Widget>[
                                Spacer(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(
                                    3,
                                    (index) => buildDot(index: index),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //button
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Container(
                            height: 50,
                            width: 250,
                            decoration: BoxDecoration(
                              color: Colors.orangeAccent,
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MainPage()));
                                },
                                child: Text(
                                  'Get Started',
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int index}) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 10,
      decoration: BoxDecoration(
          color: currentPage == index ? Colors.orangeAccent : Color(0xFFD8D8D8),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}
