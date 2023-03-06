import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ywsl_app/features/home/presentation/screens/home_screen.dart';

import '../../../../shared/widget/input_field.dart';
import '../../../../shared/widget/rounded_botton.dart';
import '../widgets/social_icon.dart';
import 'login.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        // key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'YWSL',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            InputField(
              controller: TextEditingController(),
              label: 'Name',
              keyboardType: TextInputType.name,
              prefixIcon: const Icon(Icons.person),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Email can't be empty";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            InputField(
              controller: TextEditingController(),
              label: 'Email',
              keyboardType: TextInputType.emailAddress,
              prefixIcon: const Icon(Icons.email),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Password can't be empty";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            InputField(
              controller: TextEditingController(),
              label: 'phone',
              keyboardType: TextInputType.phone,
              prefixIcon: const Icon(Icons.phone),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Email can't be empty";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            InputField(
              controller: TextEditingController(),
              label: 'birthdate',
              keyboardType: TextInputType.datetime,
              prefixIcon: const Icon(Icons.cake),
              // suffixIcon: IconButton(
              //   icon: const Icon(Icons.calendar_month),
              //   padding: const EdgeInsets.only(right: 15),
              //   onPressed: () => _pickBirthdate(bloc, context),
              // ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Password can't be empty";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            InputField(
              controller: TextEditingController(),
              label: 'Password',
              keyboardType: TextInputType.visiblePassword,
              // obscureText: bloc.isPassword,
              prefixIcon: const Icon(Icons.lock),
              // suffixIcon: IconButton(
              //   icon: Icon(
              //     bloc.isPassword ? Icons.visibility : Icons.visibility_off,
              //   ),
              //   padding: const EdgeInsets.only(right: 15),
              //   onPressed: () {
              //     bloc.add(ChangePasswordVisibilityEvent());
              //   },
              // ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "Email can't be empty";
                }
                return null;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            RoundedButton(
              child: const Text(
                "Sign In",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              onPressed: () async {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ),
                );
                // if (formKey.currentState!.validate()) {

                // }
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'I already have account',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // bloc.isPassword = true;
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SizedBox(
                  width: 100,
                  child: Divider(
                    endIndent: 10,
                    thickness: 2,
                    color: Colors.black12,
                  ),
                ),
                Text(
                  'OR',
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  width: 100,
                  child: Divider(
                    indent: 10,
                    thickness: 2,
                    color: Colors.black12,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialIcon(
                  icon: FontAwesomeIcons.facebook,
                  color: const Color(0xff035397),
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 20,
                  height: 70,
                ),
                SocialIcon(
                  icon: FontAwesomeIcons.googlePlus,
                  color: const Color(0xffF90716),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
