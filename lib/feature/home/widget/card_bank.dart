import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardBank extends StatelessWidget {
  const CardBank({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      width: 120,
      height: 55,
      child: Card(
        color: Colors.grey[50],
        shadowColor: Colors.grey,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              'assets/icons/bank.png',
              height: 32,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'BCA',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff00D27F),
                  ),
                ),
                Text(
                  'Rp 500.000',
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 10, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
