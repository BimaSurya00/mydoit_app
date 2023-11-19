import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydoit_app/feature/auth/view/sign_in.dart';
import 'package:mydoit_app/feature/auth/view/sign_up.dart';
import 'package:mydoit_app/feature/home/view/home_view.dart';
import 'package:mydoit_app/widget/bottom_navbar/bottom_navigation_bar.dart';

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
            padding: const EdgeInsets.only(top: 150),
            width: double.infinity,
            height: 414,
            child: Image.asset(
              'assets/icons/mydoiticon.png',
              scale: 4,
            ),
          ),
          Container(
            width: 328,
            height: 186,
            child: Column(
              children: [
                Text(
                  'Bersama MyDoit,\n Mulai Perjalanan\n   keuanganmu!',
                  style: GoogleFonts.inter(
                      fontSize: 32, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 30),
                Text(
                  'Dapatkan perlindungan, investasi, dan\nperencanaan keuangan yang lebih baik.',
                  style: GoogleFonts.plusJakartaSans(
                      color: const Color(0xff737373),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
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
                      side: const BorderSide(color: Color(0xff00D27F))),
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
                        color: const Color(0xff00D27F),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff00D27F),
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
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const BottomNavBar(),
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
