import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydoit_app/feature/home/model/pop_up_menu_model.dart';

class PopUpMenu extends StatefulWidget {
  const PopUpMenu({super.key});

  @override
  State<PopUpMenu> createState() => _PopUpMenuState();
}

class _PopUpMenuState extends State<PopUpMenu> {
  List<PopUpMenuModel> listmenu = [
    PopUpMenuModel(image: 'assets/icons/Anggaran.png', label: 'Anggaran'),
    PopUpMenuModel(
        image: 'assets/icons/Transaksi_icon.png', label: 'Transaksi'),
    PopUpMenuModel(image: 'assets/icons/Laporan_icon.png', label: 'Laporan'),
    PopUpMenuModel(image: 'assets/icons/Doitgpt.png', label: 'DoitGPT'),
    PopUpMenuModel(image: 'assets/icons/Tabungan.png', label: 'Tabungan'),
    PopUpMenuModel(image: 'assets/icons/Tagihan_icon.png', label: 'Tagihan'),
    PopUpMenuModel(image: 'assets/icons/Asuransi_icon.png', label: 'Asuransi'),
    PopUpMenuModel(
        image: 'assets/icons/Investasi_icon.png', label: 'Investasi'),
    PopUpMenuModel(image: 'assets/icons/Eduxmydoit.png', label: 'Eduxmydoit'),
    PopUpMenuModel(image: 'assets/icons/pph21.png', label: 'PPH21'),
    PopUpMenuModel(image: 'assets/icons/History.png', label: 'History'),
  ];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      icon: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.close,
          size: 24,
        ),
      ),
      iconPadding: const EdgeInsets.only(
        left: 275,
        top: 10,
      ),
      backgroundColor: Colors.white,
      content: Container(
        width: 260,
        height: 350,
        color: Colors.white,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemCount: 11,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              width: 37,
              height: 45,
              child: Column(
                children: [
                  Image.asset(
                    listmenu[index].image!,
                    width: 40,
                    height: 40,
                  ),
                  Text(
                    listmenu[index].label!,
                    style: GoogleFonts.plusJakartaSans(fontSize: 10),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
