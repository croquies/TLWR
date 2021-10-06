import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tlwr_frontend/presentation/auth/validation_mixin.dart';
import 'package:tlwr_frontend/presentation/shared/widgets/tlwr_alert_dialog.dart';

class SignUpPage extends HookWidget with ValidatorMixin {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final passwordConfirmController = useTextEditingController();

    Future<void> signUp(String email, String password) async {
      if (formKey.currentState?.validate() ?? false) {
        final response =
            await Supabase.instance.client.auth.signUp(email, password);
        if (response.error != null) {
          log('Sign in failed with ${response.error?.message}');
          await showDialog(
            context: context,
            builder: (context) => TLWRAlertDialog(
              title: 'Sign in',
              description: response.error?.message ?? '',
            ),
          );
        } else {
          log('Sign in success');
        }
      }
    }

    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: SizedBox(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 400,
                      child: Container(
                        margin: const EdgeInsets.only(top: 50),
                        child: const Center(
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 40,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: sizingInformation.isDesktop
                          ? sizingInformation.screenSize.width * 0.5
                          : null,
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromRGBO(143, 148, 251, .2),
                                      blurRadius: 20,
                                      offset: Offset(0, 10))
                                ]),
                            child: Form(
                              key: formKey,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey.shade100),
                                      ),
                                    ),
                                    child: TextFormField(
                                      controller: emailController,
                                      validator: emailValidator,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Email',
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400]),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    child: TextFormField(
                                      controller: passwordController,
                                      validator: passwordValidator,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Password',
                                          hintStyle: TextStyle(
                                              color: Colors.grey[400])),
                                    ),
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    child: TextFormField(
                                      controller: passwordConfirmController,
                                      validator: (value) {
                                        final confirmPassword =
                                            passwordConfirmController.text;
                                        return confirmPasswordValidator(
                                            value, confirmPassword);
                                      },
                                      obscureText: true,
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: 'Confirm password',
                                          hintStyle: TextStyle(
                                              color: Colors.grey[400])),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          InkWell(
                            onTap: () {
                              signUp(
                                emailController.text,
                                passwordController.text,
                              );
                            },
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: const LinearGradient(colors: [
                                    Color.fromRGBO(143, 148, 251, 1),
                                    Color.fromRGBO(143, 148, 251, .6),
                                  ])),
                              child: const Center(
                                child: Text(
                                  'Sign up',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 70,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ));
      },
    );
  }
}
