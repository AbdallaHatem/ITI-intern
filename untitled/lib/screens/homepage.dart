import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/components/my_botton.dart';
import 'package:untitled/screens/register.dart';
import 'package:untitled/screens/login.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFBEC),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Welcome Illustration
            Image.asset(
              'lib/images/working-studying-home-office-concept-260nw-2140712399.webp',
              fit: BoxFit.fill,
              height: 400,
            ),
            const SizedBox(height: 40),
            // Welcome Text
            const Text(
              'Welcome',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
            ),
            const Text(
              'Lorem ipsum dolor sit amet,',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black45,
              ),
            ),
            const Text(
              'consectetur adipiscing elit, sed ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black45,
              ),
            ),
            const Text(
              ' do eiusmod.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black45,
              ),
            ),
            const SizedBox(height: 40),
            // Buttons
            my_button(
              text: 'Create Account',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  RegisterScreen(),
                  ),
                );
              },
            ),
            my_button(
              text: 'Login',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  LoginScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
