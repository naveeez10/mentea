import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentea/features/auth/presentation/cubit/auth/auth_cubit.dart';
import 'package:mentea/features/auth/presentation/pages/sign_up_page.dart';

import 'core/injection/injection.dart';
import 'core/routes/router.dart';

class MenteaApp extends StatefulWidget {
  const MenteaApp({super.key});

  @override
  State<MenteaApp> createState() => _MenteaAppState();
}

class _MenteaAppState extends State<MenteaApp> {
  final _appRouter = AppRouter();
  final authCubit = getIt<AuthCubit>();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => authCubit,
          lazy: false,
        )
      ],
      child: MaterialApp.router(
        title: 'Mentea',
        themeMode: ThemeMode.light,
        theme: ThemeData(primaryColor: Color(0xfffeec01), scaffoldBackgroundColor: Colors.white),
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(),
      ),
    );
  }
}
