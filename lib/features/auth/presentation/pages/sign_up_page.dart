import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mentea/core/widgets/custom_textfield.dart';
import 'package:mentea/features/auth/presentation/cubit/auth/auth_cubit.dart';

import '../../../../core/utils/constants.dart';

@RoutePage()
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
      return state.maybeMap(
        orElse: () => Placeholder(),
        loading: (s) => Center(
          child: CircularProgressIndicator(
            color: Theme.of(context).primaryColor,
          ),
        ),
        unauthenticated: (value) => SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 80,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Mentea",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.black),
                ),
                SizedBox(height: 10),
                Text(
                  "Finding Mentors is a Cup of Tea with Mentea!",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
                // Image.asset("assets/RegisterPagePage.png"),
                CustomTextfield(
                  enabled: true,
                  hintText: "Email",
                  contentPadding: EdgeInsets.all(14),
                  onChanged: (val) {},
                  maxHeight: 100,
                ),
                // const SizedBox(
                //   height: 15,
                // ),
                // CustomTextfield(
                //   onChanged: (val) {},
                // ),
                // const SizedBox(height: 15),
                // CustomTextfield(
                //   onChanged: (val) {},
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text.rich(TextSpan(
                  text: "Already have an account?  ",
                  style: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w800,
                    fontSize: 14,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: "Sign in here",
                        style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w800,
                            decoration: TextDecoration.underline),
                        recognizer: TapGestureRecognizer()..onTap = () {})
                  ],
                ))
              ],
            ),
          ),
        ),
        authenticated: (value) => Placeholder(),
      );
    }));
  }
}
