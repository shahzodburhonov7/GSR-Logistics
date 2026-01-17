import 'package:warhouse_qr_code/common/base/base_cubit.dart';
import 'package:warhouse_qr_code/domain/model/storage/storage.dart';
import 'package:warhouse_qr_code/domain/repo/start_repo.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:warhouse_qr_code/features/splash/cubit/splash_state.dart';

@injectable
class SplashCubit extends BaseCubit<SplashBuildable, SplashListenable> {
  SplashCubit(this._repo, this.storage) : super(const SplashBuildable()) {
    nextInitialPage();
  }

  final Storage storage;

  final StartRepo _repo;

  void nextInitialPage() {
    debugPrint('TOKEN: ${storage.token.call() ?? ''}');
    Future.delayed(const Duration(seconds: 2), () {
      final token = storage.token.call() ?? '';
      if (token.isEmpty) {
        invoke(const SplashListenable(effect: SplashEffect.login));
      } else {
        invoke(const SplashListenable(effect: SplashEffect.home));
      }
    });
  }

  void getOnBoarded() {
    final result = _repo.getOnboarded();
    build((buildable) => buildable.copyWith(onBoarded: result));
  }
}
