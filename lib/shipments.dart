import 'package:flutter/material.dart';

class ShipmentsPage extends StatefulWidget {
  const ShipmentsPage({Key key, @required this.title}) : super(key: key);
  final String title;

  @override
  _ShipmentsPageState createState() => _ShipmentsPageState();
}

class _ShipmentsPageState extends State<ShipmentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: Text('ssss'),
      ),
    );
  }
}
