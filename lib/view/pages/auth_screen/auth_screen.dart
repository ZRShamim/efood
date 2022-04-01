import 'package:efood/view/pages/app_screen/home_page.dart';
import 'package:efood/view/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AuthScreen extends StatelessWidget {
  AuthScreen({Key? key}) : super(key: key);

  var signIn = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text(
            signIn.value ? 'Login' : 'Sign up',
            style: const TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: mainBG,
        elevation: 0,
      ),
      backgroundColor: mainBG,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                  label: const Text('Phone'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  prefixIcon: const Icon(Icons.call_outlined)),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                  label: const Text('Password'),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  prefixIcon: const Icon(Icons.lock_outlined)),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                if (signIn.value) {
                  Get.off(() => const HomePage());
                  
                }
              },
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: Obx(
                    () => Text(
                      signIn.value ? 'Login' : 'Signup',
                      style: const TextStyle(color: mainBG),
                    ),
                  ),
                ),
              ),
            ),
            Obx(
              () => Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(signIn.value
                      ? 'Don\'t have an account ?'
                      : 'Already have an account ?'),
                  TextButton(
                    onPressed: () {
                      signIn.value = !signIn.value;
                    },
                    child: Text(
                      signIn.value ? 'Signup' : 'Login',
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Expanded(
                  child: Divider(
                    color: Colors.black,
                    height: 1.5,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text('or'),
                ),
                Expanded(
                  child: Divider(
                    color: Colors.black,
                    height: 1.5,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                LoginSocialButton(
                  iconPath: 'assets/icons/facebook.svg',
                ),
                LoginSocialButton(
                  iconPath: 'assets/icons/google-plus.svg',
                ),
                LoginSocialButton(
                  iconPath: 'assets/icons/twitter.svg',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LoginSocialButton extends StatelessWidget {
  const LoginSocialButton({
    Key? key,
    required this.iconPath,
  }) : super(key: key);

  final String iconPath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: const Color.fromARGB(255, 219, 219, 219),
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconPath,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
