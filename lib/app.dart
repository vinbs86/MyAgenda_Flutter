import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:myagenda/keys/pref_key.dart';
import 'package:myagenda/keys/route_key.dart';
import 'package:myagenda/screens/about/aboutscreen.dart';
import 'package:myagenda/screens/about/licences/licences.dart';
import 'package:myagenda/screens/findroom/findroom.dart';
import 'package:myagenda/screens/home/home.dart';
import 'package:myagenda/screens/introduction/intro.dart';
import 'package:myagenda/screens/login/login.dart';
import 'package:myagenda/screens/settings/settings.dart';
import 'package:myagenda/screens/splashscreen/splashscreen.dart';
import 'package:myagenda/utils/custom_route.dart';
import 'package:myagenda/utils/dynamic_theme.dart';
import 'package:myagenda/utils/functions.dart';
import 'package:myagenda/utils/translations.dart';

final routes = {
  RouteKey.SPLASHSCREEN: SplashScreen(),
  RouteKey.HOME: HomeScreen(),
  RouteKey.FINDROOM: FindRoomScreen(),
  RouteKey.SETTINGS: SettingsScreen(),
  RouteKey.UPDATE: AboutScreen(),
  RouteKey.ABOUT: AboutScreen(),
  RouteKey.LICENCES: LicencesScreen(),
  RouteKey.INTRO: IntroductionScreen(),
  RouteKey.LOGOUT: LoginScreen(),
  RouteKey.LOGIN: LoginScreen(),
};

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
        defaultTheme: ThemeData(
            fontFamily: 'OpenSans',
            primaryColor: const Color(PrefKey.defaultPrimaryColor),
            accentColor: const Color(PrefKey.defaultAccentColor),
            brightness: getBrightness(PrefKey.defaultDarkTheme)),
        themedWidgetBuilder: (context, theme) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: "MyAgenda",
              theme: theme,
              localizationsDelegates: [
                const TranslationsDelegate(),
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              supportedLocales: [const Locale('en'), const Locale('fr')],
              initialRoute: RouteKey.SPLASHSCREEN,
              onGenerateRoute: (RouteSettings settings) {
                if (routes.containsKey(settings.name))
                  return CustomRoute(
                      builder: (_) => routes[settings.name],
                      settings: settings);
                assert(false);
              });
        });
  }
}
