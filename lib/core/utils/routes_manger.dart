import 'package:flutter/cupertino.dart';

import '../../presentation/screens/article_details/article_details.dart';
import '../../presentation/screens/home_screen/home_screen.dart';
import '../../presentation/screens/splash_screen/splash_screen.dart';

class RoutesManager {
  static const String splash = "/splash";
  static const String home = "/home";
  static const String articleDetails = "/articleDetails";
  static Map<String, WidgetBuilder> routes = {
    splash: (BuildContext context) => const SplashScreen(),
    home: (BuildContext context) => const HomeScreen(),
    articleDetails: (BuildContext context) => const ArticleDetails(),
  };
}
