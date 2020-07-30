import 'package:flutter/material.dart';
import 'package:food_delivery/components/navBar.dart';
import 'package:food_delivery/components/titleBar.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: TitleBar(), preferredSize: Size.fromHeight(60.0)),
      body: Container(),
      bottomNavigationBar: NavBar(
        currentPage: "SETTINGS",
      ),
    );
  }
}
