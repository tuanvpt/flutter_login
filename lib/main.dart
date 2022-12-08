import 'package:demo/router/router.gr.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: FlexThemeData.light(scheme: FlexScheme.materialBaseline),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.mandyRed),
      themeMode: ThemeMode.system,
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
    );
  }
}
