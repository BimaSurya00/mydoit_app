import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopUpTampilan extends StatelessWidget {
  const PopUpTampilan({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      height: 706,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 370,
            ),
            child: Icon(Icons.close),
          ),
          Container(
            width: 302,
            height: 35,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Atur tampilan di beranda',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  'Pilih fitur prioritasmu untuk ditampilkan di berandamu.',
                  style: GoogleFonts.plusJakartaSans(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
              ],
            ),
          ),
          SizedBox(height: 8),
          Container(
            width: 377,
            height: 400,
            color: Colors.yellow,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10)),
                  width: 25,
                  height: 22,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
