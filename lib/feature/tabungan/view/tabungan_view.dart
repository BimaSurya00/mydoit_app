import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydoit_app/feature/home/widget/card_content.dart';

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 8),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 700,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 10, color: Colors.grey.withOpacity(0.5))
                  ]),
              child: Column(
                children: [
                  SizedBox(height: 16),
                  Container(
                    width: 328,
                    height: 42,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.green)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 157,
                          height: 42,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(child: Text('Aktif')),
                        ),
                        Container(
                          width: 155,
                          height: 42,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(child: Text('Riwayat')),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 42),
                  CardContent(),
                  SizedBox(height: 12),
                  CardContent(),
                  SizedBox(height: 64),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8))),
                        backgroundColor: Color(0xff00D27F),
                        fixedSize: const Size(328, 48),
                        elevation: 0),
                    child: const Text(
                      '+ Tambah tabungan',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
