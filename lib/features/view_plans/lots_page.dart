import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warhouse_qr_code/common/base/base_page.dart';
import 'package:warhouse_qr_code/common/extensions/text_extensions.dart';
import 'package:warhouse_qr_code/features/view_plans/cubit/view_plans_cubit.dart';
import 'package:warhouse_qr_code/features/view_plans/cubit/view_plans_state.dart';

@RoutePage()
class LotsPage
    extends BasePage<ViewPlansCubit, ViewPlansBuildable, ViewPlansListenable> {
  const LotsPage({super.key});
  @override
  void init(BuildContext context) {
    final cubit=context.read<ViewPlansCubit>();
    super.init(context);
  }

  @override
  Widget builder(BuildContext context, ViewPlansBuildable state) {
    return Scaffold(
      appBar: AppBar(title: const Text("Skanerlangan yuklar")),
      body: SafeArea(
        child: Column(
          children: [
            // Oxirgi skanerlangan teg haqida qisqacha ma'lumot
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Jami o'qildi: ${state.scannedTags.length} dona")
                  .s(16).w(700),
            ),

            Expanded(
              child: state.scannedTags.isEmpty
                  ? const Center(child: Text("Hali hech narsa skanerlanmadi"))
                  : ListView.builder(
                itemCount: state.scannedTags.length,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                itemBuilder: (context, index) {
                  final tag = state.scannedTags[index];
                  return Card(
                    margin: const EdgeInsets.only(bottom: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                      side: const BorderSide(color: Colors.blue, width: 1),
                    ),
                    child: ListTile(
                      leading: const Icon(Icons.inventory_2, color: Colors.blue),
                      title: Text(tag).s(14).w(600),
                      subtitle: Text("${index + 1}-yuk"),
                      trailing: const Icon(Icons.check_circle, color: Colors.green),
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
