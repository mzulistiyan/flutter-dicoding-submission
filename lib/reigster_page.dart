import 'package:flutter/material.dart';
import 'package:flutter_application_dicoding_submission/home_page.dart';
import 'package:flutter_application_dicoding_submission/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisteerPage extends StatelessWidget {
  const RegisteerPage({Key? key}) : super(key: key);

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
              child: const TextField(
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
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
                textAlignVertical: TextAlignVertical.center,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  isDense: true,
                  hintText: 'Email',
                  prefixIcon: Icon(
                    Icons.email,
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
                child: Text('Register',
                    style: GoogleFonts.poppins(color: Colors.white)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("You have account?",
                    style: GoogleFonts.poppins(color: Colors.grey)),
                const SizedBox(
                  width: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                  child: Text('Login',
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
