import 'package:flutter/material.dart';
import 'package:package_tracker/page_provider.dart';
import 'package:package_tracker/theme.dart';
import 'package:provider/provider.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageProvider pageProvider = Provider.of<PageProvider>(context);
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      child: BottomAppBar(
        child: BottomNavigationBar(
          backgroundColor: colorPutih,
          currentIndex: pageProvider.currentIndex,
          selectedItemColor: colorMerah,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            pageProvider.currentIndex = value;
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_rounded),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
