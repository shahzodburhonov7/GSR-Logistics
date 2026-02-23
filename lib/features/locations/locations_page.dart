import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:warhouse_qr_code/common/base/base_page.dart';
import 'package:warhouse_qr_code/common/extensions/text_extensions.dart';
import 'package:warhouse_qr_code/common/router/app_router.dart';
import 'package:warhouse_qr_code/common/widgets/scale_animation.dart';
import 'package:warhouse_qr_code/features/locations/cubit/locations_cubit.dart';
import 'package:warhouse_qr_code/features/locations/cubit/locations_state.dart';

import '../../domain/model/stock_picking/stock_picking.dart';

@RoutePage()
class LocationsPage
    extends BasePage<LocationsCubit, LocationsBuildable, LocationsListenable> {
  const LocationsPage({super.key, required this.name, required this.id});

  final String name;
  final int id;

  @override
  void init(BuildContext context) {
    context.read<LocationsCubit>().stockPicking(id: id);
    super.init(context);
  }

  @override
  Widget builder(BuildContext context, LocationsBuildable state) {
    final cubit = context.read<LocationsCubit>();
    final list = state.stockPicking ?? [];

    return Scaffold(
      appBar: AppBar(title: name.s(16.r), centerTitle: true),
      body: state.loading
          ? const Center(child: CupertinoActivityIndicator())
          : SafeArea(
              child: Padding(
                padding: REdgeInsets.all(16),
                child: RefreshIndicator(
                  onRefresh: () async {
                    cubit.stockPicking(id: id);
                  },
                  child: list.isEmpty
                      ? ListView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.6,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.inbox_outlined,
                                    size: 64.r,
                                    color: Colors.grey,
                                  ),
                                  12.verticalSpace,
                                  'Not found'.s(16.r).w(500).c(Colors.grey),
                                ],
                              ),
                            ),
                          ],
                        )
                      : ListView.builder(
                          physics: const AlwaysScrollableScrollPhysics(),
                          itemCount: list.length,
                          itemBuilder: (context, index) {
                            final item = list[index];
                            final dateTime = item.carArrivalTime; // 👈 xavfsiz

                            Map<String, String> splitDateTime(String date) {
                              final dateTime = DateTime.parse(date);

                              return {
                                'date': DateFormat(
                                  'dd.MM.yyyy',
                                ).format(dateTime),
                                'time': DateFormat('HH:mm').format(dateTime),
                              };
                            }

                            final result = splitDateTime(dateTime ?? "");

                            return WScaleAnimation(
                              onTap: () {
                                cubit.storage.pickingId.set(item.id);
                                context.router.push(
                                  ProductsRoute(
                                    name: name,
                                    id: item.id ?? 0,
                                  ),
                                );
                              },
                              child: Container(
                                margin: REdgeInsets.only(bottom: 8),
                                padding: REdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.grey.shade300,
                                  ),
                                  borderRadius: BorderRadius.circular(10.r),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    /// TITLE
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color: Colors.grey,
                                        ),
                                        6.horizontalSpace,
                                        '${item.displayName}'
                                            .s(14)
                                            .w(600)
                                            .c(Colors.black),
                                        const Spacer(),
                                        Container(
                                          padding: REdgeInsets.symmetric(
                                            horizontal: 10,
                                            vertical: 6,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius: BorderRadius.circular(
                                              16.r,
                                            ),
                                          ),
                                          child: '${item.state}'
                                              .s(12)
                                              .w(600)
                                              .c(Colors.white),
                                        ),
                                      ],
                                    ),

                                    10.verticalSpace,

                                    /// CREATOR + DATE
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ("${item.scheduledDate}")
                                            .s(14)
                                            .w(500)
                                            .c(Colors.black),
                                        (item.scheduledDate?.split(' ').first ??
                                                '-')
                                            .s(14)
                                            .w(500)
                                            .c(Colors.black),
                                      ],
                                    ),

                                    10.verticalSpace,

                                    /// LABELS
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        'Car'
                                            .s(13)
                                            .w(500)
                                            .c(Colors.grey),
                                        'Arrival time'
                                            .s(13)
                                            .w(500)
                                            .c(Colors.grey),
                                      ],
                                    ),

                                    6.verticalSpace,

                                    /// VALUES
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        (item.car??"--")
                                            .s(14)
                                            .w(600)
                                            .c(Colors.black),


                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            "${result["date"]}${result["time"]}"
                                                .s(14)
                                                .w(600)
                                                .c(Colors.black),

                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10,),

                                    "Client".s(14).w(600).a(TextAlign.start).c(Colors.grey),
                                    ListView.builder(
                                      shrinkWrap: true,
                                      physics:
                                      const NeverScrollableScrollPhysics(),
                                      itemCount: state
                                          .stockPicking?[index]
                                          .clients
                                          ?.length,
                                      itemBuilder: (context, ind) {
                                        final item = state
                                            .stockPicking?[index]
                                            .clients?[ind];

                                        return Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            "$item".s(14).c(Colors.black).w(600)
                                          ],);
                                      },
                                    ),
                                    SizedBox(height: 10,),
                                    "Track Id".s(14).w(600).c(Colors.grey),

                                    ListView.builder(
                                      shrinkWrap: true,
                                      physics:
                                      const NeverScrollableScrollPhysics(),
                                      itemCount: state
                                          .stockPicking?[index]
                                          .trackIds
                                          ?.length,
                                      itemBuilder: (context, ind) {
                                        final item = state
                                            .stockPicking?[index]
                                            .trackIds?[ind];

                                        return Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            "$item".s(14).c(Colors.black).w(600)
                                          ],);
                                      },
                                    ),

                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                ),
              ),
            ),
    );
  }
}
