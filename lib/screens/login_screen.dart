import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:note_app/screens/signup_screen.dart';
import 'package:note_app/screens/welcome_screen.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(22, 0, 22, 0),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50, bottom: 30),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
                          },
                          icon: Icon(Icons.chevron_left)),
                      Container(
                        width: 55,
                      ),
                      const Text(
                        "Login here",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1F41BB),
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 70),
                  child: Text(
                    "Welcome back you're\nbeen miss!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter some text!";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true, // Đặt thành true để hiển thị màu nền
                      fillColor: const Color(0xffF1F4FF), // Màu nền của ô nhập liệu
                      labelText: 'Email',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue[900]!,
                          width: 1.5,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter some text!";
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      filled: true, // Đặt thành true để hiển thị màu nền
                      fillColor: const Color(0xffF1F4FF), // Màu nền của ô nhập liệu
                      labelText: 'Password',
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.blue[900]!,
                          width: 1.5,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Row(
                    children: [
                      const Spacer(),
                      InkWell(
                        onTap: () {},
                        child: const Text(
                          "Forgot your password?",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xff1F41BB),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(
                          double.infinity, 60), // Chiều rộng và chiều cao tối thiểu của nút
                      padding: EdgeInsets.zero, // Bỏ padding nếu muốn kích thước nút cố định
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      overlayColor: Colors.white,
                      backgroundColor: const Color(0xff1F41BB),
                    ),
                    child: const Text(
                      "Sign in",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => SignupScreen()));
                    },
                    child: const Text(
                      "Create new account",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Color(0xff494949),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey,
                          endIndent: 10, // Khoảng cách giữa Divider và Text
                        ),
                      ),
                      Text(
                        "Or continue with",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1F41BB),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 1,
                          color: Colors.grey,
                          indent: 10, // Khoảng cách giữa Text và Divider
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/google.png'),
                        RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Color(0xff494949),
                            ),
                            children: [
                              TextSpan(
                                text: '  Login with ',
                              ),
                              TextSpan(
                                text: 'Google',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/facebook.png'),
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xff494949),
                          ),
                          children: [
                            TextSpan(
                              text: '  Login with ',
                            ),
                            TextSpan(
                              text: 'Facebook',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
