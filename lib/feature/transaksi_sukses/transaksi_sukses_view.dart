import 'package:flutter/material.dart';

class TransaksiSuksesView extends StatefulWidget {
  const TransaksiSuksesView({super.key});

  @override
  State<TransaksiSuksesView> createState() => _TransaksiSuksesViewState();
}

class _TransaksiSuksesViewState extends State<TransaksiSuksesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/icons/verified.png', height: 100),
            SizedBox(height: 64),
            Text('Selamat, Kamu telah berhasil membuat transaksi'),
          ],
        ),
      ),
    );
  }
}
