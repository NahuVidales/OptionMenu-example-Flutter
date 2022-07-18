import 'package:flutter_application_1/models/models.dart';
import 'package:flutter_application_1/screens/animated_screen.dart';

import 'package:flutter_application_1/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOption = <MenuOption>[
    MenuOption(
      route: 'home',
      iconData: Icons.safety_check,
      name: 'Home Screen',
      screen: const HomeScreen(),
    ),
    MenuOption(
      route: 'listview1',
      iconData: Icons.list,
      name: 'List View 1',
      screen: ListView1Screen(),
    ),
    MenuOption(
      route: 'listview2',
      iconData: Icons.account_balance_wallet,
      name: 'List View 2',
      screen: const ListView2Screen(),
    ),
    MenuOption(
      route: 'alert',
      iconData: Icons.apple_sharp,
      name: 'Alert',
      screen: const AlertScreen(),
    ),
    MenuOption(
      route: 'card',
      iconData: Icons.credit_card_rounded,
      name: 'Cards',
      screen: const CardScreen(),
    ),
    MenuOption(
      route: 'avatar',
      iconData: Icons.person_sharp,
      name: 'Avatar',
      screen: const AvatarScreen(),
    ),
    MenuOption(
      route: 'animated',
      iconData: Icons.play_circle_outline_sharp,
      name: 'Animated',
      screen: const AnimatedScreen(),
    ),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    final appRoutes = <String, Widget Function(BuildContext)>{};

    for (final option in menuOption) {
      appRoutes.addAll({
        option.route: (BuildContext context) => option.screen,
      });
    }

    return appRoutes;
  }
  // static dynamic routes = {
  //   'home': (BuildContext context) => const HomeScreen(),
  //   'listview1': (BuildContext context) => ListView1Screen(),
  //   'listview2': (BuildContext context) => const ListView2Screen(),
  //   'alert': (BuildContext context) => const AlertScreen(),
  //   'card': (BuildContext context) => const CardScreen(),
//  };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute<void>(
      builder: (context) => const AlertScreen(),
    );
  }
}
