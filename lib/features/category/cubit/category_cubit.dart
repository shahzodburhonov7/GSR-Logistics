import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:warhouse_qr_code/common/base/base_cubit.dart';
import 'package:warhouse_qr_code/domain/model/storage/storage.dart';
import 'package:warhouse_qr_code/features/category/cubit/category_state.dart';

@injectable
class CategoryCubit extends BaseCubit<CategoryBuildable, CategoryListenable> {
  CategoryCubit(this.storage) : super(const CategoryBuildable());
  final Storage storage;

}