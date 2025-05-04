import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sala/core/controllers/auth_controller.dart';
import 'package:sala/core/services/navigation_service.dart';
import 'package:sala/views/auth_pages/login_page.dart';
import 'package:sala/widgets/adaptative_circular_progress_bar.dart';
import 'package:sala/widgets/or_divider.dart';
import 'package:sala/widgets/social_login_buttons.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final AuthController controller = Get.find();

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
                    key: controller.registerValidator.formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'CREATE ACCOUNT',
                          style: tt.headlineSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: cs.onSurface,
                          ),
                        ),
                        const SizedBox(height: 32),

                        // Username
                        TextFormField(
                          controller: controller.registerValidator
                              .getController("username"),
                          validator: controller.registerValidator
                              .getValidation("username"),
                          decoration: InputDecoration(hintText: 'Username'),
                        ),
                        const SizedBox(height: 24),

                        // Email
                        TextFormField(
                          decoration: InputDecoration(hintText: 'Email'),
                          keyboardType: TextInputType.emailAddress,
                          controller: controller.registerValidator
                              .getController("email"),
                          validator: controller.registerValidator
                              .getValidation("email"),
                        ),
                        const SizedBox(height: 24),

                        // Password
                        TextFormField(
                          controller: controller.registerValidator
                              .getController("password"),
                          validator: controller.registerValidator
                              .getValidation("password"),
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
                          obscureText: true,
                        ),
                        const SizedBox(height: 16),

                        // Register button
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
                              controller.register();
                            },
                            child: Obx(
                              () => controller.isLoading.value
                                  ? const AdaptativeCircularProgressBar()
                                  : Text(
                                      'REGISTER',
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

                        // Social login buttons
                        const SizedBox(height: 32),

                        const SizedBox(height: 32),
                        // Sign in link
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account? ",
                              style:
                                  tt.bodyMedium?.copyWith(color: cs.onSurface),
                            ),
                            GestureDetector(
                              onTap: () {
                                controller.setObscureText(value: true);
                                NavigationService().replaceWith(LoginPage());
                              },
                              child: Text(
                                'Sign In',
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
