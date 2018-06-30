import 'package:basic_widgets/pages/add_page.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:basic_widgets/pages/setting_page.dart';
import 'package:basic_widgets/pages/account_page.dart';
import 'package:basic_widgets/pages/tab_page.dart';
import 'package:basic_widgets/utils/database_helper.dart';

import 'package:flutter/material.dart';

void main() async {
  DatabaseHelper databaseHelper = DatabaseHelper.internal();
  databaseHelper.initDatabase();

  runApp(BasicWidgets());
}

class BasicWidgets extends StatefulWidget {
  @override
  _BasicWidgetsState createState() => _BasicWidgetsState();
}

class _BasicWidgetsState extends State<BasicWidgets> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'พื้นฐาน Widgets',
        theme: ThemeData(
          primaryColor: Colors.purple,
          fontFamily: 'Lamoon',
        ),
        localizationsDelegates: [
          // ... app-specific localization delegate[s] here
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('th', 'TH'),
        ],
        routes: <String, WidgetBuilder>{
          '/account': (BuildContext context) => AccountPage(1),
          '/setting': (BuildContext context) => SettingPage(),
          '/add': (BuildContext context) => AddPage(null),
        },
        home: TabPage());
  }
}
