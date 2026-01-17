import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warhouse_qr_code/common/base/base_page.dart';
import 'package:warhouse_qr_code/common/extensions/text_extensions.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:warhouse_qr_code/common/router/app_router.dart';
import 'package:warhouse_qr_code/features/operations/cubit/operations_cubit.dart';
import 'package:warhouse_qr_code/features/operations/cubit/operations_state.dart';

@RoutePage()
class OperationsPage
    extends
        BasePage<OperationsCubit, OperationsBuildable, OperationsListenable> {
  const OperationsPage({super.key});

  @override
  void init(BuildContext context) {
    final cubit = context.read<OperationsCubit>();

    cubit.websocket();

    cubit.getHomeApi();
    debugPrint("💕${cubit.storage.employee_id.call()}");
    super.init(context);
  }

  @override
  Widget builder(BuildContext context, OperationsBuildable state) {
    final cubit = context.read<OperationsCubit>();
    final list = state.warehouse?.result ?? [];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: PopupMenuButton(
            icon: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue.shade400, Colors.blue.shade700],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const Icon(Icons.person, color: Colors.white, size: 24),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            offset: const Offset(0, 56),
            color: Colors.white,
            elevation: 8,
            shadowColor: Colors.black26,
            onSelected: (value) {
              if (value == 1) {
                cubit.storage.token.delete();
                context.router.replaceAll([LoginRoute()]);
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                enabled: false,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 4,
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.blue.shade300,
                              Colors.blue.shade600,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue.withOpacity(0.3),
                              blurRadius: 8,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.person,
                          color: Colors.white,
                          size: 28,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Profil",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black87,
                              ),
                            ),
                            const SizedBox(height: 6),
                            Text(
                              cubit.storage.userName.call() ?? "Foydalanuvchi",
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              PopupMenuItem(
                enabled: false,
                padding: EdgeInsets.zero,
                child: Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.grey.shade200,
                ),
              ),
              PopupMenuItem(
                value: 1,
                height: 56,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.red.shade400, Colors.red.shade600],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red.withOpacity(0.3),
                        blurRadius: 6,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.logout_rounded,
                        size: 20,
                        color: Colors.white,
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        "Exit",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        title: const Text(
          "Operation",
          style: TextStyle(
            color: Colors.black87,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
      body: state.loading
          ? const Center(child: CupertinoActivityIndicator(color: Colors.black))
          : SafeArea(
              child: Padding(
                padding: REdgeInsets.all(16),
                child: RefreshIndicator(
                  onRefresh: () async {
                    cubit.getHomeApi();
                  },
                  child: CustomScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    slivers: [

                      if (list.isEmpty)
                        SliverFillRemaining(
                          hasScrollBody: false,
                          child: Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.inbox_outlined,
                                  size: 64.r,
                                  color: Colors.grey,
                                ),
                                12.verticalSpace,
                                'Ma’lumot topilmadi'
                                    .s(16.r)
                                    .w(500)
                                    .c(Colors.grey),
                              ],
                            ),
                          ),
                        )
                      else
                        SliverList(
                          delegate: SliverChildBuilderDelegate((
                            context,
                            index,
                          ) {
                            final item = list[index];
                            return Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 8,
                              ),
                              margin: REdgeInsets.only(bottom: 8),
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey.shade300,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: ListTile(
                                contentPadding: EdgeInsets.zero,
                                title:
                                    (item.display_name
                                                ?.split(':')
                                                .last
                                                .trim() ??
                                            '')
                                        .s(17.r)
                                        .w(500),
                                subtitle: item.warehouse_id?[1]
                                    .toString()
                                    .s(14.r)
                                    .w(400),
                                trailing: Container(
                                  padding: REdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 4,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                  child: "${item.count_picking_ready}"
                                      .s(12.r)
                                      .c(Colors.black87)
                                      .w(500),
                                ),
                                onTap: () => context.router.push(
                                  LocationsRoute(
                                    name: 'My Company: PICK',
                                    id: item.id ?? 0,
                                  ),
                                ),
                              ),
                            );
                          }, childCount: list.length),
                        ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
