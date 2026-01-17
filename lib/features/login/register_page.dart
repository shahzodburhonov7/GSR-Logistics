import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:warhouse_qr_code/common/base/base_page.dart';
import 'package:warhouse_qr_code/common/widgets/common_text_field.dart';
import 'package:warhouse_qr_code/common/widgets/custom_button.dart';
import 'package:warhouse_qr_code/features/login/cubit/login_cubit.dart';
import 'package:warhouse_qr_code/features/login/cubit/login_state.dart';

@RoutePage()
class RegisterPage
    extends BasePage<LoginCubit, LoginBuildable, LoginListenable> {
  RegisterPage({super.key});

  final TextEditingController login = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmPassword = TextEditingController();

  @override
  Widget builder(BuildContext context, LoginBuildable state) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: REdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 6.r),

              CommonTextField(hint: "Login", controller: login),

              SizedBox(height: 18.r),

              CommonTextField(
                obscureText: true,
                hint: "Password",
                controller: password,
              ),

              SizedBox(height: 18.r),

              CommonTextField(
                obscureText: true,
                hint: "Confirm Password",
                controller: confirmPassword,
              ),

              SizedBox(height: 18.r),

              CustomButton(
                onTap: () {
                  if (login.text.trim().isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Please enter your login ❗"),
                      ),
                    );
                    return;
                  }

                  if (password.text.isEmpty || confirmPassword.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          "Please enter your password completely ❗",
                        ),
                      ),
                    );
                    return;
                  }

                  if (password.text != confirmPassword.text) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text("Passwords do not match ❌")),
                    );
                    return;
                  }

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Registration completed. Please wait up to 24 hours for account approval.",
                      ),
                    ),
                  );

                  context.router.pop();
                },
                text: "Register",
              ),

              SizedBox(height: 12.r),
            ],
          ),
        ),
      ),
    );
  }
}
