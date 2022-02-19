import 'package:flutter/material.dart';
import 'package:flutter_onboard_homeview/product/companent/app_text_constant.dart';
import 'package:flutter_onboard_homeview/product/companent/app_text_style.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          AppString().settingsText,
          style: StyleText().cleanTextStyle,
        ),
      ),
    );
  }
}
