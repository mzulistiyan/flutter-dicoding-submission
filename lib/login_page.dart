import 'package:flutter/material.dart';
import 'package:flutter_application_dicoding_submission/home_page.dart';
import 'package:flutter_application_dicoding_submission/reigster_page.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController nameController = TextEditingController(text: '');
  bool _validate = false;
  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(14),
          children: [
            const Icon(
              Icons.bakery_dining_rounded,
              color: Color(0xff2C3C4D),
              size: 50,
            ),
            Center(
              child: Text(
                'World Bank',
                style: GoogleFonts.poppins(
                  color: const Color(0xff2C3C4D),
                  fontSize: 32,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              height: 60,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                controller: nameController,
                textAlignVertical: TextAlignVertical.center,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  isDense: true,
                  hintText: 'Username',
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.grey,
                    size: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 60,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: const TextField(
                obscureText: true,
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  isDense: true,
                  hintText: 'Password',
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.grey,
                    size: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return const Color(0xff2C3C4D);
                      } else if (states.contains(MaterialState.disabled)) {
                        return const Color(0xff2C3C4D);
                      }
                      return const Color(0xff2C3C4D);
                      // Use the component's default.
                    },
                  ),
                ),
                onPressed: () {
                  setState(() {
                    nameController.text.isEmpty
                        ? _validate = true
                        : _validate = false;
                  });

                  if (_validate == true) {
                    showDialog(
                      context: context,

                      barrierDismissible: false, // user must tap button!
                      builder: (BuildContext context) {
                        return AlertDialog(
                          contentPadding: const EdgeInsets.all(0.0),
                          insetPadding: EdgeInsets.zero,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          content: SizedBox(
                            width: 50,
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Email cannot be blank',
                                  style: GoogleFonts.poppins(
                                    color: const Color(0xff2C3C4D),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Icon(
                                      Icons.close,
                                      color: Colors.red,
                                      size: 30,
                                    )),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyHomePage(
                          title: nameController.text,
                        ),
                      ),
                    );
                  }
                },
                child: Text('Login',
                    style: GoogleFonts.poppins(color: Colors.white)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("on't have an account yet?",
                    style: GoogleFonts.poppins(color: Colors.grey)),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegisteerPage()),
                    );
                  },
                  child: Text('Register',
                      style: GoogleFonts.poppins(color: Colors.blue)),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 130,
                  height: 60,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 1),
                        blurRadius: 5,
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/google.png',
                        width: 24,
                        height: 24,
                      ),
                      const SizedBox(
                        width: 7,
                      ),
                      Text(
                        'Google',
                        style: GoogleFonts.quicksand(
                            color: const Color(0xffBDBDBD),
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 130,
                  height: 60,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: const Color(0xff4368C7),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 1),
                        blurRadius: 5,
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/facebook.png',
                        width: 20,
                        height: 20,
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Text(
                        'Facebook',
                        style: GoogleFonts.quicksand(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
