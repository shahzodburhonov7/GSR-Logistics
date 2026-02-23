import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warhouse_qr_code/common/base/base_page.dart';
import 'package:warhouse_qr_code/common/router/app_router.dart';
import 'package:warhouse_qr_code/features/category/cubit/category_cubit.dart';
import 'package:warhouse_qr_code/features/category/cubit/category_state.dart';

@RoutePage()
class CategoryPage
    extends BasePage<CategoryCubit, CategoryBuildable, CategoryListenable> {
  const CategoryPage({super.key});

  @override
  Widget builder(BuildContext context, CategoryBuildable state) {
    final List<Map<String, String>> categories = [
      {
        "title": "View Plans",
        "image": "assets/images/view_plans.png",
      },
      {
        "title": "Stock",
        "image": "assets/images/stock.png",
      },
      {
        "title": "Operations",
        "image": "assets/images/operation.png",
      },
    ];
    final cubit = context.read<CategoryCubit>();

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
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final item = categories[index];

          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: GestureDetector(
              onTap: (){
                switch (index) {
                  case 0:
                    context.router.push(const ViewPlansRoute());
                    break;
                  case 1:
                    context.router.push(const OperationsRoute());
                    break;
                  case 2:
                    context.router.push(const OperationsRoute());
                    break;
                }
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          item["image"]!,
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ),

                      const SizedBox(width: 16),

                      Expanded(
                        child: Text(
                          item["title"]!,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      const Icon(Icons.arrow_forward_ios, size: 18),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

}