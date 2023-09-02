import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'core/routes/router.dart';

class MenteaApp extends StatefulWidget {
  const MenteaApp({super.key});

  @override
  State<MenteaApp> createState() => _MenteaAppState();
}

class _MenteaAppState extends State<MenteaApp> {
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Mentea',
      themeMode: ThemeMode.light,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
