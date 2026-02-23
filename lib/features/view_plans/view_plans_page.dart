import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warhouse_qr_code/common/base/base_page.dart';
import 'package:warhouse_qr_code/common/extensions/text_extensions.dart';
import 'package:warhouse_qr_code/common/router/app_router.dart';
import 'package:warhouse_qr_code/features/view_plans/cubit/view_plans_cubit.dart';
import 'package:warhouse_qr_code/features/view_plans/cubit/view_plans_state.dart';

@RoutePage()
class ViewPlansPage
    extends BasePage<ViewPlansCubit, ViewPlansBuildable, ViewPlansListenable> {
  const ViewPlansPage({super.key});

  @override
  void init(BuildContext context) {
    final cubit = context.read<ViewPlansCubit>();
    cubit.getPlans(state: 'to_do');
    super.init(context);
  }

  @override
  Widget builder(BuildContext context, ViewPlansBuildable state) {
    final cubit = context.read<ViewPlansCubit>();
    final List<Map<String, String>> planTabs = [
      {"key": "to_do", "title": "To-Do"},
      {"key": "read", "title": "Read"},
      {"key": "completed", "title": "Completed"},
    ];

    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(planTabs.length, (index) {
                final isSelected = state.selectedIndex == index;
                final item = planTabs[index];

                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: GestureDetector(
                      onTap: () {
                        cubit.selectButton(index);
                        cubit.getPlans(state: "${item["key"]}");
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? const Color(0xffFFF6AE)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: isSelected
                                ? const Color(0xffFFF6AE)
                                : Colors.grey.shade400,
                            width: 1.5,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            item["title"] ?? "",
                            style: TextStyle(
                              color: isSelected ? Colors.black : Colors.black87,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                "Plan-ID".s(16).w(500),
                "Logist".s(16).w(500),
                "Scheduud".s(16).w(500),
              ],
            ),

            const SizedBox(height: 10),

            state.loading
                ? const Expanded(
                    child: Center(child: CircularProgressIndicator()),
                  )
                : Expanded(
                    child: ListView.separated(
                      itemCount: state.getPlans?.result?.length ?? 0,
                      separatorBuilder: (context, index) =>
                          const Divider(height: 20, thickness: 1),
                      itemBuilder: (context, index) {
                        final item = state.getPlans?.result?[index];

                        return GestureDetector(
                          onTap: () {
                            context.router.push(
                              ViewDetailsRoute(
                                id: item?.id ?? 0,
                                name: item?.name??"",
                                sourceWarehouseId: item?.sourceWarehouseId?[1]??"",
                                destWarehouseId: item?.destWarehouseId?[1]??"",
                                createDate: item?.createDate??"",
                                createUid: item?.createUid?[1]??"", datePlan: item?.datePlan??"",
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    item?.name ?? '',
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    "${item?.createUid?[1] ?? ''}",
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    item?.datePlan ?? '',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
