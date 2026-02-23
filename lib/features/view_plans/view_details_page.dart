import 'dart:convert';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warhouse_qr_code/common/base/base_page.dart';
import 'package:warhouse_qr_code/common/extensions/text_extensions.dart';
import 'package:warhouse_qr_code/common/router/app_router.dart';
import 'package:warhouse_qr_code/common/widgets/scale_animation.dart';
import 'package:warhouse_qr_code/features/view_plans/cubit/view_plans_cubit.dart';
import 'package:warhouse_qr_code/features/view_plans/cubit/view_plans_state.dart';

@RoutePage()
class ViewDetailsPage
    extends BasePage<ViewPlansCubit, ViewPlansBuildable, ViewPlansListenable> {
  const ViewDetailsPage(
    this.id,
    this.name,
    this.sourceWarehouseId,
    this.destWarehouseId,
    this.createDate,
    this.createUid,
    this.datePlan, {
    super.key,
  });

  final int id;
  final String name;
  final String sourceWarehouseId;
  final String destWarehouseId;
  final String createDate;
  final String createUid;
  final String datePlan;

  @override
  void init(BuildContext context) {
    final cubit = context.read<ViewPlansCubit>();
    cubit.getPlansLine(id: id);
    super.init(context);
  }

  @override
  Widget builder(BuildContext context, ViewPlansBuildable state) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 30,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.purple, width: 1.5),
                  ),
                  child: Center(
                    child: Text(
                      "Plan",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 12),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 30,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.purple, width: 1.5),
                  ),
                  child: Center(
                    child: Text(
                      "Extra",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                name.s(18).w(600),
                SizedBox(width: 8),

                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: const EdgeInsets.symmetric(
                    vertical: 2,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade50,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.black, width: 1.5),
                  ),
                  child: Center(
                    child: Text(
                      "Status",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            "Scheduled date: $datePlan".s(12).w(600),
            "Created on: $createDate".s(12).w(600),
            "Responsible logist: $createUid".s(12).w(600),
            Row(
              spacing: 10,
              children: [
                "From: $destWarehouseId".s(12).w(600),
                "To: $sourceWarehouseId".s(12).w(600),
              ],
            ),
            SizedBox(height: 12),
            Row(
              children: [
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: const EdgeInsets.symmetric(
                    vertical: 3,
                    horizontal: 30,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 1.5),
                  ),
                  child: Center(
                    child: Text(
                      "Plan",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: const EdgeInsets.symmetric(
                    vertical: 3,
                    horizontal: 30,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 1.5),
                  ),
                  child: Center(
                    child: Text(
                      "Extra",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                WScaleAnimation(
                  onTap: () {
                    context.router.push(LotsRoute());
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    padding: const EdgeInsets.symmetric(
                      vertical: 3,
                      horizontal: 30,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 1.5),
                    ),
                    child: Center(
                      child: Text(
                        "Lots",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Divider(color: Colors.black, height: 30),
            state.lineLoading
                ? Center(child: CircularProgressIndicator())
                : Expanded(
                    child: ListView.builder(
                      itemCount: state.getLine?.result?.length,
                      itemBuilder: (context, index) {
                        final item = state.getLine?.result?[index];
                        final imageUrl =
                            state.getLine?.result?[index].logisticPhoto;
                        return Card(
                          margin: const EdgeInsets.only(bottom: 8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: BorderSide(color: Colors.black, width: 1.5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 6,
                              horizontal: 12,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    "${item?.trackId}"
                                        .s(12)
                                        .w(600)
                                        .c(Colors.black),
                                    "${item?.productId?[1]}"
                                        .s(12)
                                        .w(600)
                                        .c(Colors.black),

                                    "${item?.pickQty}/0"
                                        .s(14)
                                        .w(600)
                                        .c(Colors.black),
                                    GestureDetector(
                                      onTap: () {
                                        print("lll");
                                        if (imageUrl == null ||
                                            imageUrl.isEmpty) {
                                          return;
                                        }

                                        final bytes = base64Decode(
                                          imageUrl.split(',').last,
                                        );

                                        showDialog(
                                          barrierDismissible: true,
                                          context: context,
                                          builder: (parent) {
                                            return Dialog(
                                              backgroundColor: Colors.black
                                                  .withOpacity(0.9),
                                              insetPadding:
                                              const EdgeInsets.all(10),
                                              child: Stack(
                                                children: [
                                                  Center(
                                                    child: InteractiveViewer(
                                                      child: Image.memory(
                                                        bytes,
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    top: 10,
                                                    right: 10,
                                                    child: IconButton(
                                                      onPressed: () => Navigator.of(context, rootNavigator: true).pop(),
                                                      icon: const Icon(
                                                        Icons.close,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        );
                                      },
                                      child: const Icon(Icons.image),
                                    ),


                                  ],
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


