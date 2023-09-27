import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          ),
          SizedBox(height: 40),
          Container(
            width: 328,
            height: 118,
            child: Text(
              'Bersama MyDoit,\nMulai Perjalanan\nkeuanganmu!',
              style:
                  GoogleFonts.inter(fontSize: 32, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(height: 68),
          Container(
            width: 328,
            height: 56,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: Size(160, 56),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Masuk',
                    style: GoogleFonts.inter(
                        color: Color(0xff818181),
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff111111),
                    fixedSize: Size(160, 56),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Masuk',
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24),
          Text(
            'Masuk Tanpa Daftar',
            style: GoogleFonts.inter(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: Color(0xff818181)),
          )
        ],
      ),
    );
  }
}
