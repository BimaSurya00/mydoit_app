import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydoit_app/feature/auth/view/sign_in.dart';
import 'package:mydoit_app/feature/auth/view/sign_up.dart';
import 'package:mydoit_app/feature/home/view/home_view.dart';

class LandingPage1 extends StatefulWidget {
  const LandingPage1({super.key});

  @override
  State<LandingPage1> createState() => _LandingPage1State();
}

class _LandingPage1State extends State<LandingPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 414,
            color: Colors.grey,
            child: Image.asset('assets/icons/Google.png'),
          ),
          const SizedBox(height: 40),
          SizedBox(
            width: 328,
            height: 118,
            child: Text(
              'Bersama MyDoit,\nMulai Perjalanan\nkeuanganmu!',
              style:
                  GoogleFonts.inter(fontSize: 32, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: 68),
          SizedBox(
            width: 328,
            height: 56,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      fixedSize: const Size(160, 56),
                      elevation: 0,
                      side: const BorderSide(color: Colors.black)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignIn(),
                        ));
                  },
                  child: Text(
                    'Masuk',
                    style: GoogleFonts.inter(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff111111),
                      fixedSize: const Size(160, 56),
                      elevation: 0),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUp(),
                        ));
                  },
                  child: Text(
                    'Daftar',
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                )),
            child: Text(
              'Masuk Tanpa Daftar',
              style: GoogleFonts.inter(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff818181)),
            ),
          )
        ],
      ),
    );
  }
}
