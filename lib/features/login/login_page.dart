import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warhouse_qr_code/common/base/base_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:warhouse_qr_code/common/router/app_router.dart';
import 'package:warhouse_qr_code/common/widgets/common_text_field.dart';
import 'package:warhouse_qr_code/common/widgets/custom_button.dart';
import 'package:warhouse_qr_code/common/widgets/flush_bar.dart';
import 'package:warhouse_qr_code/common/widgets/scale_animation.dart';
import 'package:warhouse_qr_code/features/login/cubit/login_cubit.dart';
import 'package:warhouse_qr_code/features/login/cubit/login_state.dart';

@RoutePage()
class LoginPage extends BasePage<LoginCubit, LoginBuildable, LoginListenable> {
  LoginPage({super.key});

  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void listener(BuildContext context, LoginListenable state) {
    switch (state.effect) {
      case LoginEffect.error:
        showErrorFlushBar(
          state.errorText ?? "Something went wrong. Please try again.",
        ).show(context);
        break;

      case LoginEffect.notFoundError:
        showErrorFlushBar("Account not found.").show(context);
        break;

      case LoginEffect.success:
        context.router.replaceAll([CategoryRoute()]);
        break;
    }
    super.listener(context, state);
  }

  @override
  Widget builder(BuildContext context, LoginBuildable state) {
    final cubit = context.read<LoginCubit>();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: REdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonTextField(
                hint: "Login",
                controller: loginController,
              ),
              SizedBox(height: 18.r),
              CommonTextField(
                hint: "Password",
                obscureText: true,
                controller: passwordController,
              ),
              SizedBox(height: 18.r),
              CustomButton(
                loading: state.loading,
                text: "Sign In",
                onTap: () {
                  cubit.login(
                    login: loginController.text,
                    password: passwordController.text,
                  );
                },
              ),
              SizedBox(height: 12.r),
              WScaleAnimation(
                onTap: () {
                  context.router.push(RegisterRoute());
                },
                child: const Center(
                  child: Text(
                    "Create an account",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

