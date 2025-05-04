import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sala/core/controllers/auth_controller.dart';
import 'package:sala/core/services/navigation_service.dart';
import 'package:sala/views/auth_pages/register_page.dart';
import 'package:sala/widgets/adaptative_circular_progress_bar.dart';
import 'package:sala/widgets/or_divider.dart';
import 'package:sala/widgets/social_login_buttons.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final AuthController controller = Get.put(AuthController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    final tt = Theme.of(context).textTheme;

    return GetBuilder(
        init: controller,
        builder: (controller) {
          return Scaffold(
            body: SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Form(
                    key: controller.loginValidator.formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'SIGN IN',
                          style: tt.headlineSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: cs.onSurface,
                          ),
                        ),
                        const SizedBox(height: 32),

                        // Username field
                        TextFormField(
                          decoration: InputDecoration(hintText: 'Email'),
                          controller:
                              controller.loginValidator.getController("email"),
                          validator:
                              controller.loginValidator.getValidation("email"),
                        ),
                        const SizedBox(height: 24),

                        // Password field
                        TextFormField(
                          obscureText: controller.isObscureText.value,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            suffixIcon: IconButton(
                              icon: FaIcon(
                                controller.isObscureText.value
                                    ? FontAwesomeIcons.eye
                                    : FontAwesomeIcons.eyeSlash,
                                color: cs.primary,
                                size: 16,
                              ),
                              onPressed: () {
                                controller.setObscureText();
                              },
                            ),
                          ),
                          controller: controller.loginValidator
                              .getController("password"),
                          validator: controller.loginValidator
                              .getValidation("password"),
                        ),
                        const SizedBox(height: 16),

                        // Login button
                        SizedBox(
                          width: double.infinity,
                          height: 48,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: cs.primary,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onPressed: () {
                              // Perform login
                              // NavigationService().replaceWith(const MainPage());
                              controller.login();
                            },
                            child: Obx(
                              () => controller.isLoading.value
                                  ? AdaptativeCircularProgressBar()
                                  : Text(
                                      'LOGIN',
                                      style: tt.bodyLarge?.copyWith(
                                        color: cs.onPrimary,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 16),
                        OrDivider(),
                        const SizedBox(height: 16),
                        // Social login buttons
                        SocialLoginButtons(
                          onAppleTap: () {
                            // handle Apple login
                          },
                          onFacebookTap: () {
                            // handle Facebook login
                          },
                          onGoogleTap: () {
                            // handle Google login
                          },
                        ),

                        const SizedBox(height: 32),
                        // Register link
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account? ",
                              style:
                                  tt.bodyMedium?.copyWith(color: cs.onSurface),
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.setObscureText(value: true);
                                NavigationService().replaceWith(RegisterPage());
                              },
                              child: Text(
                                'Register Here',
                                style: tt.bodyMedium?.copyWith(
                                  color: cs.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
