import 'package:warhouse_qr_code/common/base/base_cubit.dart';
import 'package:injectable/injectable.dart';
import 'package:warhouse_qr_code/domain/auth/auth_repo.dart';
import 'package:warhouse_qr_code/domain/model/storage/storage.dart';
import 'package:warhouse_qr_code/features/locations/cubit/locations_state.dart';

@injectable
class LocationsCubit
    extends BaseCubit<LocationsBuildable, LocationsListenable> {
  LocationsCubit(this.repository, {required this.storage})
    : super(const LocationsBuildable());

  final AuthRepository repository;
  final Storage storage;

  void stockPicking({required int id}) {
    callable(
      future: repository.stockPicking(id: id),
      buildOnStart: () => buildable.copyWith(loading: true),
      buildOnData: (d) => buildable.copyWith(loading: false, stockPicking: d),
      buildOnError: (e) => buildable.copyWith(loading: false),
    );
  }
}
