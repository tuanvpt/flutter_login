// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:auto_route/empty_router_widgets.dart' as _i8;
import 'package:demo/pages/code_screens/code_screen.dart' as _i7;
import 'package:demo/pages/code_screens/tab1_screen.dart' as _i9;
import 'package:demo/pages/code_screens/tab2_screen.dart' as _i10;
import 'package:demo/pages/code_screens/tab3_screen.dart' as _i11;
import 'package:demo/pages/login_screens/login_screen.dart' as _i1;
import 'package:demo/pages/login_screens/signup_screen.dart' as _i2;
import 'package:demo/pages/main_screen/user_details_screen.dart' as _i5;
import 'package:demo/pages/main_screen/user_friends_screen.dart' as _i6;
import 'package:demo/pages/main_screen/user_profile_screen.dart' as _i4;
import 'package:demo/pages/main_screen/user_screen.dart' as _i3;
import 'package:flutter/material.dart' as _i13;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    LoginScreenRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.LoginScreen(),
      );
    },
    SignupScreenRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.SignupScreen(),
      );
    },
    UserScreenRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.UserScreen(),
      );
    },
    UserProfileScreenRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i4.UserProfileScreen(),
      );
    },
    UserDetailsScreenRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i5.UserDetailsScreen(),
      );
    },
    UserFriendsScreenRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i6.UserFriendsScreen(),
      );
    },
    CodeScreenRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<CodeScreenRouteArgs>(
          orElse: () => CodeScreenRouteArgs(id: pathParams.getString('id')));
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i7.CodeScreen(
          key: args.key,
          id: args.id,
        ),
      );
    },
    GroupTab1Router.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i8.EmptyRouterPage(),
      );
    },
    GroupTab2Router.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i8.EmptyRouterPage(),
      );
    },
    GroupTab3Router.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i8.EmptyRouterPage(),
      );
    },
    Tab1ScreenRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i9.Tab1Screen(),
      );
    },
    Tab2ScreenRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i10.Tab2Screen(),
      );
    },
    Tab3ScreenRoute.name: (routeData) {
      return _i12.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i11.Tab3Screen(),
      );
    },
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/login',
          fullMatch: true,
        ),
        _i12.RouteConfig(
          LoginScreenRoute.name,
          path: '/login',
          children: [
            _i12.RouteConfig(
              '*#redirect',
              path: '*',
              parent: LoginScreenRoute.name,
              redirectTo: '',
              fullMatch: true,
            )
          ],
        ),
        _i12.RouteConfig(
          SignupScreenRoute.name,
          path: '/signup',
          children: [
            _i12.RouteConfig(
              '*#redirect',
              path: '*',
              parent: SignupScreenRoute.name,
              redirectTo: '',
              fullMatch: true,
            )
          ],
        ),
        _i12.RouteConfig(
          UserScreenRoute.name,
          path: '/user',
          children: [
            _i12.RouteConfig(
              UserProfileScreenRoute.name,
              path: '',
              parent: UserScreenRoute.name,
            ),
            _i12.RouteConfig(
              UserDetailsScreenRoute.name,
              path: 'details',
              parent: UserScreenRoute.name,
            ),
            _i12.RouteConfig(
              UserFriendsScreenRoute.name,
              path: 'friends',
              parent: UserScreenRoute.name,
            ),
            _i12.RouteConfig(
              CodeScreenRoute.name,
              path: 'group/:id',
              parent: UserScreenRoute.name,
              children: [
                _i12.RouteConfig(
                  GroupTab1Router.name,
                  path: 'tab1',
                  parent: CodeScreenRoute.name,
                  children: [
                    _i12.RouteConfig(
                      Tab1ScreenRoute.name,
                      path: '',
                      parent: GroupTab1Router.name,
                    ),
                    _i12.RouteConfig(
                      '*#redirect',
                      path: '*',
                      parent: GroupTab1Router.name,
                      redirectTo: '',
                      fullMatch: true,
                    ),
                  ],
                ),
                _i12.RouteConfig(
                  GroupTab2Router.name,
                  path: 'tab2',
                  parent: CodeScreenRoute.name,
                  children: [
                    _i12.RouteConfig(
                      Tab2ScreenRoute.name,
                      path: '',
                      parent: GroupTab2Router.name,
                    ),
                    _i12.RouteConfig(
                      '*#redirect',
                      path: '*',
                      parent: GroupTab2Router.name,
                      redirectTo: '',
                      fullMatch: true,
                    ),
                  ],
                ),
                _i12.RouteConfig(
                  GroupTab3Router.name,
                  path: 'tab3',
                  parent: CodeScreenRoute.name,
                  children: [
                    _i12.RouteConfig(
                      Tab3ScreenRoute.name,
                      path: '',
                      parent: GroupTab3Router.name,
                    ),
                    _i12.RouteConfig(
                      '*#redirect',
                      path: '*',
                      parent: GroupTab3Router.name,
                      redirectTo: '',
                      fullMatch: true,
                    ),
                  ],
                ),
              ],
            ),
            _i12.RouteConfig(
              '*#redirect',
              path: '*',
              parent: UserScreenRoute.name,
              redirectTo: 'profile',
              fullMatch: true,
            ),
          ],
        ),
        _i12.RouteConfig(
          '*#redirect',
          path: '*',
          redirectTo: '/login',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [_i1.LoginScreen]
class LoginScreenRoute extends _i12.PageRouteInfo<void> {
  const LoginScreenRoute({List<_i12.PageRouteInfo>? children})
      : super(
          LoginScreenRoute.name,
          path: '/login',
          initialChildren: children,
        );

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i2.SignupScreen]
class SignupScreenRoute extends _i12.PageRouteInfo<void> {
  const SignupScreenRoute({List<_i12.PageRouteInfo>? children})
      : super(
          SignupScreenRoute.name,
          path: '/signup',
          initialChildren: children,
        );

  static const String name = 'SignupScreenRoute';
}

/// generated route for
/// [_i3.UserScreen]
class UserScreenRoute extends _i12.PageRouteInfo<void> {
  const UserScreenRoute({List<_i12.PageRouteInfo>? children})
      : super(
          UserScreenRoute.name,
          path: '/user',
          initialChildren: children,
        );

  static const String name = 'UserScreenRoute';
}

/// generated route for
/// [_i4.UserProfileScreen]
class UserProfileScreenRoute extends _i12.PageRouteInfo<void> {
  const UserProfileScreenRoute()
      : super(
          UserProfileScreenRoute.name,
          path: '',
        );

  static const String name = 'UserProfileScreenRoute';
}

/// generated route for
/// [_i5.UserDetailsScreen]
class UserDetailsScreenRoute extends _i12.PageRouteInfo<void> {
  const UserDetailsScreenRoute()
      : super(
          UserDetailsScreenRoute.name,
          path: 'details',
        );

  static const String name = 'UserDetailsScreenRoute';
}

/// generated route for
/// [_i6.UserFriendsScreen]
class UserFriendsScreenRoute extends _i12.PageRouteInfo<void> {
  const UserFriendsScreenRoute()
      : super(
          UserFriendsScreenRoute.name,
          path: 'friends',
        );

  static const String name = 'UserFriendsScreenRoute';
}

/// generated route for
/// [_i7.CodeScreen]
class CodeScreenRoute extends _i12.PageRouteInfo<CodeScreenRouteArgs> {
  CodeScreenRoute({
    _i13.Key? key,
    required String id,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          CodeScreenRoute.name,
          path: 'group/:id',
          args: CodeScreenRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'CodeScreenRoute';
}

class CodeScreenRouteArgs {
  const CodeScreenRouteArgs({
    this.key,
    required this.id,
  });

  final _i13.Key? key;

  final String id;

  @override
  String toString() {
    return 'CodeScreenRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i8.EmptyRouterPage]
class GroupTab1Router extends _i12.PageRouteInfo<void> {
  const GroupTab1Router({List<_i12.PageRouteInfo>? children})
      : super(
          GroupTab1Router.name,
          path: 'tab1',
          initialChildren: children,
        );

  static const String name = 'GroupTab1Router';
}

/// generated route for
/// [_i8.EmptyRouterPage]
class GroupTab2Router extends _i12.PageRouteInfo<void> {
  const GroupTab2Router({List<_i12.PageRouteInfo>? children})
      : super(
          GroupTab2Router.name,
          path: 'tab2',
          initialChildren: children,
        );

  static const String name = 'GroupTab2Router';
}

/// generated route for
/// [_i8.EmptyRouterPage]
class GroupTab3Router extends _i12.PageRouteInfo<void> {
  const GroupTab3Router({List<_i12.PageRouteInfo>? children})
      : super(
          GroupTab3Router.name,
          path: 'tab3',
          initialChildren: children,
        );

  static const String name = 'GroupTab3Router';
}

/// generated route for
/// [_i9.Tab1Screen]
class Tab1ScreenRoute extends _i12.PageRouteInfo<void> {
  const Tab1ScreenRoute()
      : super(
          Tab1ScreenRoute.name,
          path: '',
        );

  static const String name = 'Tab1ScreenRoute';
}

/// generated route for
/// [_i10.Tab2Screen]
class Tab2ScreenRoute extends _i12.PageRouteInfo<void> {
  const Tab2ScreenRoute()
      : super(
          Tab2ScreenRoute.name,
          path: '',
        );

  static const String name = 'Tab2ScreenRoute';
}

/// generated route for
/// [_i11.Tab3Screen]
class Tab3ScreenRoute extends _i12.PageRouteInfo<void> {
  const Tab3ScreenRoute()
      : super(
          Tab3ScreenRoute.name,
          path: '',
        );

  static const String name = 'Tab3ScreenRoute';
}
