import 'package:flutter/material.dart';
import 'package:project/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                const Spacer(),
                const Text(
                  "Hello,wellcome back!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  "Login to continue",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const Spacer(),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                    child: const Text("Forget password"),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/main');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.black,
                    ),
                    child: const Text("Log in"),
                  ),
                ),
                const Spacer(),
                const Text(
                  "Or sing with",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    onPressed: () {
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/search.png",
                          width: 22,
                          height: 22,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text("Login with Google"),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/facebook.png",
                          width: 22,
                          height: 22,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text("Login With Facebook")
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "don't have account? ",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.amber,
                      ),
                      onPressed: () {},
                      child: const Text(
                        "sing up",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
