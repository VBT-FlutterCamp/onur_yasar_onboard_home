import 'package:flutter/material.dart';
import 'package:flutter_onboard_homeview/product/companent/app_text_constant.dart';

import 'package:flutter_onboard_homeview/product/companent/app_text_style.dart';
import 'package:kartal/kartal.dart';

import '../../widget/app_button_widget.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  final String _landingImage = "assets/images/Landing.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appTheme.primaryColor,
      body: Stack(
        fit: StackFit.loose,
        children: [
          _onboardImage(),
          Padding(
            padding: context.verticalPaddingHigh,
            child: _buildColumnTextandButton(context),
          ),
        ],
      ),
    );
  }

  Column _buildColumnTextandButton(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _buildTextFirst(context),
        _buildTextSecond(context),
        const Spacer(),
        _buildButtonContainer(context),
      ],
    );
  }

  SizedBox _buildButtonContainer(BuildContext context) {
    return SizedBox(
      width: context.dynamicWidth(0.45),
      height: context.dynamicHeight(0.07),
      child: const GetStartButton(),
    );
  }

  Padding _buildTextSecond(BuildContext context) {
    return Padding(
      padding: context.horizontalPaddingHigh,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          AppString().onBoardSecondText,
          style: StyleText().listTileTitle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Padding _buildTextFirst(BuildContext context) {
    return Padding(
      padding: context.verticalPaddingLow,
      child: SizedBox(
        width: context.dynamicHeight(0.35),
        child: Text(
          AppString().onBoardFirstText,
          style: context.textTheme.headline4?.copyWith(
            fontWeight: FontWeight.w600,
            color: context.appTheme.colorScheme.background,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Image _onboardImage() {
    return Image.asset(
      _landingImage,
      fit: BoxFit.fitWidth,
      width: double.infinity,
    );
  }
}
