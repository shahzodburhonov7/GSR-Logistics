import 'package:warhouse_qr_code/common/base/base_cubit.dart';
import 'package:injectable/injectable.dart';
import 'package:warhouse_qr_code/domain/auth/auth_repo.dart';
import 'package:warhouse_qr_code/domain/model/storage/storage.dart';
import 'package:warhouse_qr_code/features/login/cubit/login_state.dart';

@injectable
class LoginCubit extends BaseCubit<LoginBuildable, LoginListenable> {
  LoginCubit(this.repository, {required this.storage}) : super(const LoginBuildable());
  final AuthRepository repository;
  final Storage storage;

  void login({required String password,required String login}) {

    callable(
      future: repository.userLogin(password: password, login: login),
      buildOnStart: () => buildable.copyWith(loading: true),
      buildOnData: (d) => buildable.copyWith(loading: false),
      buildOnError: (e) => buildable.copyWith(loading: false),
      invokeOnData: (d) {
        return LoginListenable(effect: LoginEffect.success);
      },
      invokeOnError:
          (e) => LoginListenable(effect: LoginEffect.error, errorText: e),
    );
  }



}
