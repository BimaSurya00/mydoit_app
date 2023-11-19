import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardContent extends StatelessWidget {
  const CardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 328,
      height: 185,
      child: Card(
        shadowColor: Colors.grey,
        elevation: 3,
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Container(
                    width: 157,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'assets/icons/pendidikan.png',
                          height: 40,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pendidikan',
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '1 tahun 2 bulan lagi',
                              style: GoogleFonts.plusJakartaSans(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                'Rp 15.000.000',
                style: GoogleFonts.plusJakartaSans(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff00A866)),
              ),
              Image.asset('assets/icons/garis.png'),
              const Row(
                children: [Text('Tidak ada target'), Text('Rp 25.000.000')],
              )
            ],
          ),
        ),
      ),
    );
  }
}
