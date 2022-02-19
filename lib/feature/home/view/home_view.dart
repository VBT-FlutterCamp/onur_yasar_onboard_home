import 'package:flutter/material.dart';
import 'package:flutter_onboard_homeview/feature/home/model/home_model.dart';
import 'package:flutter_onboard_homeview/product/companent/app_color_constant.dart';
import 'package:flutter_onboard_homeview/product/companent/app_container_constant.dart';
import 'package:flutter_onboard_homeview/product/companent/app_icon_constant.dart';
import 'package:flutter_onboard_homeview/product/companent/app_text_constant.dart';
import 'package:flutter_onboard_homeview/product/companent/app_text_style.dart';
import 'package:kartal/kartal.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: context.paddingNormal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHomeTitle(context),
              _subCleanRow(context),
              Expanded(
                child: _buildListview(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row _subCleanRow(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _subscripText(),
        _buildCleaned(context),
      ],
    );
  }

  Container _buildCleaned(BuildContext context) {
    return Container(
      width: context.dynamicWidth(0.3),
      height: context.dynamicHeight(0.04),
      decoration: BoxDecoration(
        color: AppColors().cleanedColor,
        borderRadius: AppDecoration().decoration.borderRadius,
      ),
      child: Center(
        child: Text(
          AppString().cleanText,
          style: StyleText().cleanTextStyle,
        ),
      ),
    );
  }

  Text _subscripText() {
    return Text(
      AppString().subText + ("(${models.length})"),
      style: StyleText().subTextStyle,
    );
  }

  Padding _buildHomeTitle(BuildContext context) {
    return Padding(
      padding: context.verticalPaddingMedium,
      child: SizedBox(
        width: context.dynamicWidth(0.6),
        child: Text(
          AppString().titleHomeText,
          style: context.textTheme.headline4?.copyWith(
            color: context.appTheme.primaryColor,
            fontWeight: StyleText().styleFontWeight,
          ),
        ),
      ),
    );
  }

  _buildListview() {
    return ListView.builder(
        itemCount: models.length,
        itemBuilder: (context, index) {
          return _cardViewListTile(context, index);
        });
  }

  Card _cardViewListTile(BuildContext context, int index) {
    return Card(
      borderOnForeground: true,
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: context.normalBorderRadius,
      ),
      child: ListTile(
        title: Text(
          models[index].name,
          style: StyleText().listTileTitle,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              models[index].url,
              style: StyleText().listTileSubtitle,
            ),
            Divider(
              height: 4,
              color: AppColors().dividerColor,
            ),
          ],
        ),
        trailing: _lisTileDeleteButton(context),
      ),
    );
  }

  Container _lisTileDeleteButton(BuildContext context) {
    return Container(
      width: context.dynamicWidth(0.10),
      height: context.dynamicHeight(0.06),
      decoration: BoxDecoration(
        color: AppColors().deleteContainColor,
        borderRadius: AppDecoration().decoration.borderRadius,
      ),
      child: AppIcon().iconDelete,
    );
  }
}
