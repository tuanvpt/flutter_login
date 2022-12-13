import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:demo/pages/code_screens/code_screen.dart';
import 'package:demo/pages/code_screens/tab1_screen.dart';
import 'package:demo/pages/code_screens/tab2_screen.dart';
import 'package:demo/pages/code_screens/tab3_screen.dart';
import 'package:demo/pages/design_screen/design_screen.dart';
import 'package:demo/pages/flashcard_screen/flashcard_screens.dart';
import 'package:demo/pages/login_screens/login_screen.dart';
import 'package:demo/pages/login_screens/signup_screen.dart';
import 'package:demo/pages/main_screen/user_details_screen.dart';
import 'package:demo/pages/main_screen/user_friends_screen.dart';
import 'package:demo/pages/main_screen/user_profile_screen.dart';
import 'package:demo/pages/main_screen/user_screen.dart';

/*https://gbaccetta.medium.com/complex-flutter-navigation-with-nested-routers-and-bottom-bar-navigation-made-easy-with-7f546d33fc4d*/

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route,Screen',
  routes: <AutoRoute>[
    //authentification routes
    AutoRoute(
      initial: true,
      path: '/login',
      page: LoginScreen,
      children: [
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    AutoRoute(
      path: '/signup',
      page: SignupScreen,
      children: [
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),

    //user routes with a nested router
    AutoRoute(
      path: '/user',
      page: UserScreen,
      children: [
        AutoRoute(path: '', page: UserProfileScreen),
        AutoRoute(path: 'details', page: UserDetailsScreen),
        AutoRoute(path: 'friends', page: UserFriendsScreen),
        AutoRoute(path: 'design', page: DesignScreen),
        AutoRoute(path: 'design', page: FlashCardScreen),
        groupTabRouter,
        // redirect all other paths
        RedirectRoute(path: '*', redirectTo: 'profile'),
      ],
    ),

    // redirect all other paths
    RedirectRoute(path: '*', redirectTo: '/login'),
    //Home
  ],
)
class $AppRouter {}

//nested group route with a tab router
const groupTabRouter = AutoRoute(
  path: 'group/:id',
  page: CodeScreen,
  children: [
    AutoRoute(
      path: 'tab1',
      name: 'GroupTab1Router',
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: Tab1Screen),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    AutoRoute(
      path: 'tab2',
      name: 'GroupTab2Router',
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: Tab2Screen),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
    AutoRoute(
      path: 'tab3',
      name: 'GroupTab3Router',
      page: EmptyRouterPage,
      children: [
        AutoRoute(path: '', page: Tab3Screen),
        RedirectRoute(path: '*', redirectTo: ''),
      ],
    ),
  ],
);
