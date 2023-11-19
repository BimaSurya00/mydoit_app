import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabunganView extends StatefulWidget {
  const TabunganView({super.key});

  @override
  State<TabunganView> createState() => _TabunganViewState();
}

class _TabunganViewState extends State<TabunganView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          'Tabungan',
          style: GoogleFonts.plusJakartaSans(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 8),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 700,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(blurRadius: 10, color: Colors.grey.withOpacity(0.5))
                ]),
          )
        ],
      ),
    );
  }
}
