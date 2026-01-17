import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warhouse_qr_code/common/base/base_page.dart';
import 'package:warhouse_qr_code/common/colors/app_colors.dart';
import 'package:warhouse_qr_code/common/extensions/text_extensions.dart';
import 'package:warhouse_qr_code/common/router/app_router.dart';
import 'package:warhouse_qr_code/features/db_select/cubit/db_select_cubit.dart';
import 'package:warhouse_qr_code/features/db_select/cubit/db_select_state.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class DbSelectPage
    extends BasePage<DbSelectCubit, DbSelectBuildable, DbSelectListenable> {
  const DbSelectPage({super.key});

  @override
  Widget builder(BuildContext context, DbSelectBuildable state) {
    final databases = [
      "RG_A.Test",
      "Test_rizobay",
      "dev1006",
      "gsr_logistik",
      "odoo",
      "payroll_test",
      "tarozi_test",
      "test_lifesmile",
      "test_rizobay",
    ];

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: REdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                "Databasini tanlang".s(25.r).w(500).c(AppColors.black),
                SizedBox(height: 10.r),
                DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.primary, width: 1.r),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Expanded(
                    child: Padding(
                      padding: REdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListView.separated(
                            shrinkWrap: true,
                            itemCount: databases.length,
                            separatorBuilder: (_, _) =>
                                Divider(height: 1, color: Colors.grey.shade300),
                            itemBuilder: (context, index) {
                              final db = databases[index];
                              return InkWell(
                                onTap: () => context.router.push(LoginRoute()),
                                child: Padding(
                                  padding: REdgeInsets.symmetric(vertical: 10),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      db,
                                      style: TextStyle(
                                        color: AppColors.primary,
                                        fontSize: 16.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
