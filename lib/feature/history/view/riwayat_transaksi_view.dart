import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RiwayatTransaksiView extends StatefulWidget {
  const RiwayatTransaksiView({super.key});

  @override
  State<RiwayatTransaksiView> createState() => _RiwayatTransaksiViewState();
}

class _RiwayatTransaksiViewState extends State<RiwayatTransaksiView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        elevation: 1,
        centerTitle: true,
        title: Text(
          'Riwayat transaksi',
          style: GoogleFonts.plusJakartaSans(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 8),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 600,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10, color: Colors.grey.withOpacity(0.5)),
                ]),
            child: Column(
              children: [
                Row(
                  children: [Text('Oktober 2023'), Text('Semua')],
                ),
                SizedBox(height: 24),
                Container(
                  width: 328,
                  height: 550,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.all(8),
                        width: 328,
                        height: 114,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10)),
                      );
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
