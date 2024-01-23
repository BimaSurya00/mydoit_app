import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnggaranView extends StatefulWidget {
  const AnggaranView({super.key});

  @override
  State<AnggaranView> createState() => _AnggaranViewState();
}

class _AnggaranViewState extends State<AnggaranView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        elevation: 1,
        backgroundColor: Colors.white,
        title: Text(
          'Anggaran',
          style: GoogleFonts.plusJakartaSans(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 8),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 119,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10, color: Colors.grey.withOpacity(0.5))
                  ]),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xff007E4C),
                      borderRadius: BorderRadius.circular(10)),
                  width: 328,
                  height: 87,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Total anggaran',
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                      Text(
                        'Rp 23.750.000',
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 565,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10, color: Colors.grey.withOpacity(0.5))
                  ]),
              child: Column(
                children: [],
              ),
            )
          ],
        ),
      ),
    );
  }
}
