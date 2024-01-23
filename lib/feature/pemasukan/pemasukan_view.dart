import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PemasukanView extends StatefulWidget {
  const PemasukanView({super.key});

  @override
  State<PemasukanView> createState() => _PemasukanViewState();
}

class _PemasukanViewState extends State<PemasukanView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        elevation: 1,
        centerTitle: true,
        title: Text(
          'Pemasukan',
          style: GoogleFonts.plusJakartaSans(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 8),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: const Row(
                        children: [
                          Text('Oktober 2023'),
                          Icon(Icons.keyboard_arrow_down_sharp)
                        ],
                      ),
                    ),
                    Container(
                      child: const Row(
                        children: [
                          Text('Semua'),
                          Icon(Icons.keyboard_arrow_down_sharp)
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Container(
                  width: 328,
                  height: 550,
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          margin: const EdgeInsets.all(8),
                          width: 328,
                          height: 114,
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  color: Colors.grey.withOpacity(0.35),
                                )
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 296,
                                height: 43,
                                color: Colors.white,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Row(
                                        children: [
                                          Image.asset('assets/icons/makan.png',
                                              height: 40),
                                          const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 5),
                                              Text('Makan'),
                                              Text('26/10/2023')
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 5),
                                        Text('-Rp 32.000'),
                                        Text('QR BCA'),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                color: Colors.white,
                                width: 296,
                                height: 15,
                                child: const Text(
                                    'Catatan:  Ketoprak pak Jo Perempatan'),
                              )
                            ],
                          ));
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