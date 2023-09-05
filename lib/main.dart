import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mentea/core/injection/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:overlay_support/overlay_support.dart';

import 'mentea_app.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp();
  await ScreenUtil.ensureScreenSize();
  configureDependencies(Environment.prod);
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    runApp(OverlaySupport.global(child: MenteaApp()));
  });
}
