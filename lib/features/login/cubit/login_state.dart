import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginBuildable with _$LoginBuildable {
  const factory LoginBuildable({
    @Default(false) bool loading
}) = _LoginBuildable;
}

@freezed
class LoginListenable with _$LoginListenable {
  const factory LoginListenable({required LoginEffect effect,String? errorText}) = _LoginListenable;
}
enum LoginEffect { error, success, notFoundError }
