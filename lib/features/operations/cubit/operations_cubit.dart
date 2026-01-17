import 'package:flutter/cupertino.dart';
import 'package:warhouse_qr_code/common/base/base_cubit.dart';
import 'package:injectable/injectable.dart';
import 'package:warhouse_qr_code/domain/auth/auth_repo.dart';
import 'package:warhouse_qr_code/domain/model/storage/storage.dart';
import 'package:warhouse_qr_code/features/operations/cubit/operations_state.dart';
import 'package:warhouse_qr_code/features/service_ws/odoo_socket_service.dart';

@injectable
class OperationsCubit
    extends BaseCubit<OperationsBuildable, OperationsListenable> {
  OperationsCubit(
    this.repository, {
    required this.socketService,
    required this.storage,
  }) : super(const OperationsBuildable());

  final AuthRepository repository;
  final OdooSocketService socketService;
  final Storage storage;

  void websocket() {
    final session = "SIZ_SAQLAGAN_SESSION_ID";
    debugPrint(session);
    socketService.connect("${storage.token.call()}");
  }

  void getHomeApi() {
    callable(
      future: repository.getHomeApi(),
      buildOnStart: () => buildable.copyWith(loading: true),
      buildOnData: (d) => buildable.copyWith(loading: false, warehouse: d),
      buildOnError: (e) => buildable.copyWith(loading: false),
    );
  }
}
