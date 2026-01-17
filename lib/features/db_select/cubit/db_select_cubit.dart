import 'package:warhouse_qr_code/common/base/base_cubit.dart';
import 'package:injectable/injectable.dart';
import 'package:warhouse_qr_code/features/db_select/cubit/db_select_state.dart';

@injectable
class DbSelectCubit extends BaseCubit<DbSelectBuildable, DbSelectListenable> {
  DbSelectCubit() : super(const DbSelectBuildable());

}
