import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:demo/pages/group_screens/group_screen.dart';
import 'package:demo/pages/group_screens/tab1_screen.dart';
import 'package:demo/pages/group_screens/tab2_screen.dart';
import 'package:demo/pages/group_screens/tab3_screen.dart';
import 'package:demo/pages/home_screen/home_screen.dart';
import 'package:demo/pages/login_screens/login_screen.dart';
import 'package:demo/pages/login_screens/signup_screen.dart';
import 'package:demo/pages/user_screens/user_details_screen.dart';
import 'package:demo/pages/user_screens/user_friends_screen.dart';
import 'package:demo/pages/user_screens/user_profile_screen.dart';
import 'package:demo/pages/user_screens/user_screen.dart';

/*https://gbaccetta.medium.com/complex-flutter-navigation-with-nested-routers-and-bottom-bar-navigation-made-easy-with-7f546d33fc4d*/

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route,Screen',
  routes: <AutoRoute>[
    //authentication routes
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
        AutoRoute(path: 'home/*', page: HomeScreen),
        AutoRoute(path: 'details/*', page: UserDetailsScreen),
        AutoRoute(path: 'friends/*', page: UserFriendsScreen),
        groupTabRouter,
        // redirect all other paths
        RedirectRoute(path: '*', redirectTo: ''),
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
  page: GroupScreen,
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
