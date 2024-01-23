import 'package:flutter/material.dart';
import 'package:mydoit_app/feature/anggaran/view/anggaran_view.dart';
import 'package:mydoit_app/feature/auth/view/confirm_number.dart';
import 'package:mydoit_app/feature/forgot_password/view/forgot_password.dart';
import 'package:mydoit_app/feature/auth/view/sign_in.dart';
import 'package:mydoit_app/feature/auth/view/sign_up.dart';
import 'package:mydoit_app/feature/history/view/riwayat_transaksi_view.dart';
import 'package:mydoit_app/feature/home/view/home_view.dart';
import 'package:mydoit_app/feature/home/view/total_saldo_view.dart';
import 'package:mydoit_app/feature/home/widget/card_kelas.dart';
import 'package:mydoit_app/feature/home/widget/card_liputan.dart';
import 'package:mydoit_app/feature/landing_page/view/landing_page.dart';
import 'package:mydoit_app/feature/pemasukan/pemasukan_view.dart';
import 'package:mydoit_app/feature/tabungan/view/tabungan_view.dart';
import 'package:mydoit_app/feature/transaksi_sukses/transaksi_sukses_view.dart';
import 'package:mydoit_app/feature/welcome_page/view/onboarding.dart';
import 'package:mydoit_app/widget/bottom_navbar/bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: TransaksiSuksesView(),
    );
  }
}
