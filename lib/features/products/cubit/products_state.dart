import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:warhouse_qr_code/domain/model/products_list/products_list.dart';

part 'products_state.freezed.dart';

@freezed
class ProductsBuildable with _$ProductsBuildable {
  const factory ProductsBuildable({
    @Default(false) bool loading,
    @Default(false) bool validateLoading,
    @Default(false) bool isScannerOpen,
    @Default(false) bool isScanningBlocked,
    @Default(false) bool scannerLoading,
    @Default(0) int timerCount,
    ProductsList? productsList

  }) = _ProductsBuildable;
}

@freezed
class ProductsListenable with _$ProductsListenable {
  const factory ProductsListenable({required ProductsEffect effect,String? errorText}) = _ProductsListenable;
}
enum ProductsEffect { error, success,  }
