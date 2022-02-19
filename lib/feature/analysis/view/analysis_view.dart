import 'package:flutter/material.dart';
import 'package:flutter_onboard_homeview/product/companent/app_text_constant.dart';
import 'package:flutter_onboard_homeview/product/companent/app_text_style.dart';

class AnalysisPage extends StatelessWidget {
  const AnalysisPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Analysis"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          AppString().analysisText,
          style: StyleText().cleanTextStyle,
        ),
      ),
    );
  }
}
