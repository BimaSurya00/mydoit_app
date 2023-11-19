import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardKelas extends StatelessWidget {
  const CardKelas({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 260,
      height: 236,
      child: Stack(
        children: [
          SizedBox(
              width: 260,
              height: 237,
              child: Image.asset(
                'assets/images/kelas.png',
              )),
          Positioned(
            top: 10,
            left: 10,
            child: Container(
              width: 228,
              height: 24,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 108,
                    height: 24,
                    child: Row(
                      children: [
                        CircleAvatar(),
                        Text(
                          'Eduwrok',
                          style: GoogleFonts.plusJakartaSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.launch,
                    size: 24,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          const Positioned(
            left: 110,
            top: 95,
            child: Icon(
              Icons.play_arrow,
              size: 42,
              color: Colors.white,
            ),
          ),
          Positioned(
              top: 190,
              left: 15,
              child: Container(
                width: 228,
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'UIUX Design',
                          style: GoogleFonts.plusJakartaSans(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Lorem ipsum sit dolor...',
                          style: GoogleFonts.plusJakartaSans(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    const Icon(
                      Icons.share,
                      size: 24,
                      color: Colors.white,
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
