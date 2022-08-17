import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'auth/firebase_user_provider.dart';
import 'auth/auth_util.dart';

import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FlutterFlowTheme.initialize();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
  Locale _locale;
  ThemeMode _themeMode = FlutterFlowTheme.themeMode;

  Stream<MerstroFirebaseUser> userStream;
  MerstroFirebaseUser initialUser;
  bool displaySplashImage = true;

  final authUserSub = authenticatedUserStream.listen((_) {});

  @override
  void initState() {
    super.initState();
    userStream = merstroFirebaseUserStream()
      ..listen((user) => initialUser ?? setState(() => initialUser = user));
    Future.delayed(
      Duration(seconds: 1),
      () => setState(() => displaySplashImage = false),
    );
  }

  @override
  void dispose() {
    authUserSub.cancel();

    super.dispose();
  }

  void setLocale(Locale value) => setState(() => _locale = value);
  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
        FlutterFlowTheme.saveThemeMode(mode);
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Merstro',
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [
        Locale('en', ''),
      ],
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: _themeMode,
      home: initialUser == null || displaySplashImage
          ? Container(
              color: Colors.white,
              child: Builder(
                builder: (context) => Image.asset(
                  'assets/images/ezgif.com-gif-maker_(2).gif',
                  fit: BoxFit.contain,
                ),
              ),
            )
          : currentUser.loggedIn
              ? NavBarPage()
              : Onboarding2Widget(),
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key key, this.initialPage}) : super(key: key);

  final String initialPage;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPage = 'Home';

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage ?? _currentPage;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'Home': HomeWidget(),
      'Card': CardWidget(),
      'Forex': ForexWidget(),
      'Goals': GoalsWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPage);
    return Scaffold(
      body: tabs[_currentPage],
      extendBody: true,
      bottomNavigationBar: FloatingNavbar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() => _currentPage = tabs.keys.toList()[i]),
        backgroundColor: Color(0xFF07034D),
        selectedItemColor: FlutterFlowTheme.of(context).primaryBtnText,
        unselectedItemColor: Color(0x8AABABAB),
        selectedBackgroundColor: Color(0x00000000),
        borderRadius: 10,
        itemBorderRadius: 20,
        margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
        width: double.infinity,
        elevation: 2,
        items: [
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  currentIndex == 0 ? Icons.home : Icons.home_outlined,
                  color: currentIndex == 0
                      ? FlutterFlowTheme.of(context).primaryBtnText
                      : Color(0x8AABABAB),
                  size: 30,
                ),
                Text(
                  'Home',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color(0xFFC2C2C2),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  currentIndex == 1 ? Icons.payments : Icons.credit_card,
                  color: currentIndex == 1
                      ? FlutterFlowTheme.of(context).primaryBtnText
                      : Color(0x8AABABAB),
                  size: 30,
                ),
                Text(
                  'Cards',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color(0xFFC2C2C2),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  currentIndex == 2
                      ? FontAwesomeIcons.tradeFederation
                      : FontAwesomeIcons.tradeFederation,
                  color: currentIndex == 2
                      ? FlutterFlowTheme.of(context).primaryBtnText
                      : Color(0x8AABABAB),
                  size: 30,
                ),
                Text(
                  'Invest',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color(0xFFC2C2C2),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          FloatingNavbarItem(
            customWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  currentIndex == 3
                      ? FontAwesomeIcons.piggyBank
                      : Icons.save_alt,
                  color: currentIndex == 3
                      ? FlutterFlowTheme.of(context).primaryBtnText
                      : Color(0x8AABABAB),
                  size: 30,
                ),
                Text(
                  'Goals',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Color(0xFFC2C2C2),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
