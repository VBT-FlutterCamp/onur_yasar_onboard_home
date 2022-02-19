import 'package:flutter/material.dart';
import 'package:flutter_onboard_homeview/direction_page.dart';
import 'package:kartal/kartal.dart';

import '../../product/companent/app_text_constant.dart';

class GetStartButton extends StatelessWidget {
  const GetStartButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _radius = 18.0;
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color?>(
          context.appTheme.primaryColor,
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_radius),
          ),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DirectionPage(),
          ),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildTextButton(context),
          _buildIconButton(context),
        ],
      ),
    );
  }

  Text _buildTextButton(BuildContext context) {
    return Text(
      AppString().getStarted,
      style: context.textTheme.headline6?.copyWith(
        color: context.appTheme.backgroundColor,
      ),
    );
  }

  Icon _buildIconButton(BuildContext context) {
    return Icon(
      Icons.navigate_next_outlined,
      color: context.appTheme.colorScheme.background,
    );
  }
}
