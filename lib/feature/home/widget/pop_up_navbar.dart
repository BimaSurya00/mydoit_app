import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopUpNavbar extends StatelessWidget {
  const PopUpNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 492,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 250),
            child: Icon(Icons.close, size: 24),
          ),
          Container(
            color: Colors.white,
            width: 348,
            height: 374,
            child: Column(
              children: [
                Container(
                  width: 330,
                  height: 64,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 169,
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assets/icons/Laporan_icon.png',
                              height: 40,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Catatan transaksimu',
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                                Text(
                                  'Rp 500.0000',
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Icon(
                        Icons.keyboard_arrow_right,
                        size: 24,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                const Divider(
                  color: Colors.black,
                ),
                Container(
                  width: 330,
                  height: 77,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          IconButton(
                            iconSize: 45,
                            onPressed: () {},
                            icon: Image.asset('assets/icons/Sinkronisasi.png'),
                          ),
                          Text(
                            'Sinkronisasi akun',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            iconSize: 45,
                            onPressed: () {},
                            icon: Image.asset('assets/icons/Simpan.png'),
                          ),
                          Text('Simpan transaksi',
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey))
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            iconSize: 45,
                            onPressed: () {},
                            icon: Image.asset('assets/icons/Akun.png'),
                          ),
                          Text('Akun manual',
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey))
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 42),
                Container(
                  width: 328,
                  height: 72,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/hijau.png',
                        height: 40,
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Pemasukan',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          Text('Tambahkan catatan transaksi',
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white))
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  width: 328,
                  height: 72,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icons/merah.png',
                        height: 40,
                      ),
                      const SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Pengeluaran',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          Text('Tambahkan catatan transaksi',
                              style: GoogleFonts.plusJakartaSans(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
