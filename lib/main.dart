import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:venteny_test/features/video_player/cubit/media_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:venteny_test/features/video_player/view/video_player_page.dart';
import 'package:venteny_test/features/video_player/view/cubit/video_control_cubit.dart';

import 'app_bloc_observer.dart';
import 'core/locator.dart';
import 'core/resources/styles.dart';
import 'core/widgets/loader.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = const AppBlocObserver();

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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => MediaCubit(getIt()),
        ),
        BlocProvider(
          create: (context) => VideoControlCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Movie App',
        theme: appTheme(context),
        home: const VideoPlayerPage(),
      ),
    );
  }
}
