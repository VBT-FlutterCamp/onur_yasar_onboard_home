import 'package:flutter/material.dart';
import 'package:flutter_onboard_homeview/feature/analysis/view/analysis_view.dart';
import 'package:flutter_onboard_homeview/feature/home/view/home_view.dart';
import 'package:flutter_onboard_homeview/feature/settings/view/settings_view.dart';
import 'package:flutter_onboard_homeview/product/companent/app_icon_constant.dart';

class DirectionPage extends StatefulWidget {
  const DirectionPage({Key? key}) : super(key: key);

  @override
  _DirectionPageState createState() => _DirectionPageState();
}

class _DirectionPageState extends State<DirectionPage> {
  int _aktifNo = 0;
  late PageController sayfaKumandasi;

  @override
  void initState() {
    super.initState();
    sayfaKumandasi = PageController();
  }

  @override
  void dispose() {
    sayfaKumandasi.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageView(),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  PageView _pageView() {
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      onPageChanged: (isPageNumber) {
        setState(() {
          _aktifNo = isPageNumber;
        });
      },
      controller: sayfaKumandasi,
      children: const [
        HomeView(),
        SettingsPage(),
        AnalysisPage(),
      ],
    );
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _aktifNo,
      onTap: (selectPage) {
        setState(() {
          sayfaKumandasi.jumpToPage(selectPage);
        });
      },
      iconSize: 34,
      items: [
        BottomNavigationBarItem(
          icon: AppIcon().iconFolder,
          label: "",
        ),
        BottomNavigationBarItem(
          icon: AppIcon().iconSetting,
          label: "",
        ),
        BottomNavigationBarItem(
          icon: AppIcon().iconAnalysis,
          label: "",
        ),
      ],
    );
  }
}
