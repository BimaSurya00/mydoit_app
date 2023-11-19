import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardLiputan extends StatelessWidget {
  const CardLiputan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(blurRadius: 15, color: Colors.grey.withOpacity(0.2))
      ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
      width: 360,
      height: 398,
      child: Column(
        children: [
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: 328,
            height: 41,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 122,
                  height: 41,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CircleAvatar(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Liputan 6',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Berita',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 104,
                  height: 24,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Icon(
                        Icons.add,
                        color: Color(0xff00D27F),
                      ),
                      Text(
                        'Ikuti',
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xff00D27F)),
                      ),
                      const Icon(Icons.more_vert)
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 12),
          Container(
            width: 328,
            height: 200,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Image.asset(
              'assets/images/liputan.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            width: 328,
            height: 26,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Kiat sukses bisnisman',
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const Icon(Icons.reply_all)
              ],
            ),
          ),
          const SizedBox(height: 12),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            width: 324,
            height: 38,
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing\nelit. Donec at ipsum at sapien efficitur varius...',
              style: GoogleFonts.plusJakartaSans(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff737373)),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(right: 140),
            child: Container(
              width: 153,
              height: 13,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.access_alarm,
                    size: 12,
                    color: Colors.grey,
                  ),
                  Text(
                    'Diposting 30 menit yang lalu',
                    style: GoogleFonts.plusJakartaSans(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
