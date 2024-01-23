import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydoit_app/feature/anggaran/view/anggaran_view.dart';
import 'package:mydoit_app/feature/history/view/riwayat_transaksi_view.dart';
import 'package:mydoit_app/feature/home/view/total_saldo_view.dart';
import 'package:mydoit_app/feature/home/widget/card_bank.dart';
import 'package:mydoit_app/feature/home/widget/card_content.dart';
import 'package:mydoit_app/feature/home/widget/card_kelas.dart';
import 'package:mydoit_app/feature/home/widget/card_liputan.dart';
import 'package:mydoit_app/feature/home/widget/pop_up_menu.dart';
import 'package:mydoit_app/feature/home/widget/pop_up_tampilan.dart';
import 'package:mydoit_app/feature/tabungan/view/tabungan_view.dart';
import 'package:mydoit_app/widget/bottom_navbar/bottom_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 250,
                child: Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xff26A070), Color(0xff31E19B)]),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20)),
                      ),
                      width: MediaQuery.of(context).size.width,
                      height: 190,
                      child: Container(
                        margin: const EdgeInsets.only(
                            right: 15, left: 15, bottom: 40),
                        width: 360,
                        height: 56,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Row(
                                children: [
                                  const CircleAvatar(),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Hi, Joko Ss',
                                    style: GoogleFonts.plusJakartaSans(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.add_ic_call,
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 24),
                                  Icon(
                                    Icons.notifications,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 140,
                      child: Image.asset(
                        'assets/images/Motif.png',
                        width: 266,
                        height: 263,
                      ),
                    ),
                    Positioned(
                      top: 140,
                      left: 16,
                      right: 16,
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Color(0xff007E4C),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        width: 328,
                        height: 95,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 178,
                              height: 63,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Total saldo',
                                    style: GoogleFonts.plusJakartaSans(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    'Rp 1.234.000',
                                    style: GoogleFonts.plusJakartaSans(
                                        color: Colors.white,
                                        fontSize: 26,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.white,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const TotalSaldoView(),
                                      ));
                                },
                                child: const Icon(
                                  Icons.add,
                                  size: 28,
                                  color: Colors.green,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [Color(0xff01AE69), Color(0xff007E4C)]),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: 328,
                height: 149,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      width: 154,
                      height: 121,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Selamat',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                          Text(
                            'Pengeluaranmu berkurang\n25% dari bulan lalu',
                            style: GoogleFonts.plusJakartaSans(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                          Row(
                            children: [
                              Text(
                                'Lihat detail',
                                style: GoogleFonts.plusJakartaSans(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.grey[400]),
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.grey[400],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/images/Indikator.png',
                      height: 110,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10, color: Colors.grey.withOpacity(0.5))
                    ]),
                width: 360,
                height: 131,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        'Service',
                        style: GoogleFonts.plusJakartaSans(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const AnggaranView(),
                                    ));
                              },
                              child: Image.asset(
                                'assets/icons/Anggaran.png',
                                height: 40,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text('Anggaran')
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const RiwayatTransaksiView(),
                                    ));
                              },
                              child: Image.asset(
                                'assets/icons/History.png',
                                height: 40,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text('History')
                          ],
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const TabunganView(),
                                    ));
                              },
                              child: Image.asset(
                                'assets/icons/Tabungan.png',
                                height: 40,
                              ),
                            ),
                            const SizedBox(height: 5),
                            const Text('Tabungan')
                          ],
                        ),
                        Column(
                          children: [
                            Image.asset(
                              'assets/icons/Doitgpt.png',
                              height: 40,
                            ),
                            const SizedBox(height: 5),
                            const Text('DoitGPT')
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (context) => const PopUpMenu());
                          },
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/icons/Lainnya.png',
                                height: 40,
                              ),
                              const SizedBox(height: 5),
                              const Text('Semua')
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: 360,
                height: 93,
                padding: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10, color: Colors.grey.withOpacity(0.5))
                    ]),
                child: const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [CardBank(), CardBank(), CardBank(), CardBank()],
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: 360,
                height: 470,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10, color: Colors.grey.withOpacity(0.5))
                    ]),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 10),
                          width: 210,
                          height: 40,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Atur tampilan',
                                style: GoogleFonts.plusJakartaSans(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                'Tabungan',
                                style: GoogleFonts.plusJakartaSans(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xff00A866)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return const PopUpTampilan();
                                },
                              );
                            },
                            child: const Icon(
                              Icons.build_circle,
                              color: Colors.grey,
                              size: 24,
                            ),
                          ),
                        )
                      ],
                    ),
                    const CardContent(),
                    const SizedBox(height: 10),
                    const CardContent(),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                width: 360,
                height: 530,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10, color: Colors.grey.withOpacity(0.5))
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kelas Eduwork',
                      style: GoogleFonts.plusJakartaSans(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 24),
                    Container(
                      width: 328,
                      height: 89,
                      child: Column(
                        children: [
                          const SizedBox(
                            width: 328,
                            height: 44,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Cari kelas',
                                  prefixIcon: Icon(Icons.search),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10)))),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Container(
                            width: 328,
                            height: 29,
                            color: Colors.white,
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 90,
                                  height: 29,
                                  child: Card(
                                    color: const Color(0xff00D27F),
                                    child: Center(
                                      child: Text(
                                        'Akutansi',
                                        style: GoogleFonts.plusJakartaSans(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 90,
                                  height: 29,
                                  child: Card(
                                    color: Colors.grey[300],
                                    child: Center(
                                      child: Text(
                                        'Pajak',
                                        style: GoogleFonts.plusJakartaSans(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 90,
                                  height: 29,
                                  child: Card(
                                    color: Colors.grey[300],
                                    child: Center(
                                      child: Text(
                                        'Audit',
                                        style: GoogleFonts.plusJakartaSans(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 20),
                                const Icon(
                                  Icons.tune,
                                  color: Colors.grey,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                    Container(
                      width: 344,
                      height: 237,
                      child: const SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            CardKelas(),
                            SizedBox(width: 8),
                            CardKelas(),
                            SizedBox(width: 8),
                            CardKelas()
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Container(
                      width: 328,
                      height: 72,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff006D42)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Butuh Konsultasi?',
                                style: GoogleFonts.plusJakartaSans(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                              Text(
                                'Segera hubungi kami disini',
                                style: GoogleFonts.plusJakartaSans(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          const CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(
                              Icons.add_ic_call,
                              size: 24,
                              color: Color(0xff00A866),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: 360,
                height: 890,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 75,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 10,
                                color: Colors.grey.withOpacity(0.5))
                          ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 184,
                            height: 34,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Terbaru dari Mydoit',
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'Telusuri update terbaru tentang Fintech',
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 8),
                          Container(
                            width: 89,
                            height: 18,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Explore',
                                  style: GoogleFonts.plusJakartaSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xff00D27F)),
                                ),
                                const Icon(
                                  Icons.launch,
                                  color: Color(0xff00D27F),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 2),
                    const CardLiputan(),
                    const SizedBox(height: 10),
                    const CardLiputan()
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
