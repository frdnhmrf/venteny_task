import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'core/locator.dart';
import 'core/resources/styles.dart';
import 'core/widgets/loader.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configLoading();
  await configureDependencies();
  runApp(const MyApp());
}

void configLoading() {
  EasyLoading.instance
    ..loadingStyle = EasyLoadingStyle.light
    ..maskType = EasyLoadingMaskType.black
    ..indicatorWidget = const Loader(size: 50)
    ..indicatorSize = 50
    ..dismissOnTap = false;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product',
      theme: appTheme(context),
      home: const SizedBox(),
    );
  }
}
