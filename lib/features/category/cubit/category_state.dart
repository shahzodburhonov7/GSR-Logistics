import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_state.freezed.dart';

@freezed
class CategoryBuildable with _$CategoryBuildable {
  const factory CategoryBuildable({
    @Default(false) bool loading,
  }) = _CategoryBuildable;
}

@freezed
class CategoryListenable with _$CategoryListenable {
  const factory CategoryListenable() = _CategoryListenable;
}