import 'package:warhouse_qr_code/common/base/base_page.dart';
import 'package:warhouse_qr_code/common/gen/assets.gen.dart';
import 'package:warhouse_qr_code/common/router/app_router.dart';
import 'package:warhouse_qr_code/features/splash/cubit/splash_cubit.dart';
import 'package:warhouse_qr_code/features/splash/cubit/splash_state.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashPage
    extends BasePage<SplashCubit, SplashBuildable, SplashListenable> {
  const SplashPage({super.key});

  @override
  void listener(BuildContext context, SplashListenable state) {
    switch (state.effect) {
      case SplashEffect.login:
        context.router.replaceAll([LoginRoute()]);
        break;
      case SplashEffect.home:
        context.router.replaceAll([OperationsRoute()]);
        break;
    }
  }

  @override
  Widget builder(BuildContext context, SplashBuildable state) {
    return Scaffold(
      body: Center(
        child: Assets.icons.gsr.svg(width: 250.r,fit: BoxFit.cover),
      ),
    );
  }
}
