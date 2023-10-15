import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmNumber extends StatefulWidget {
  const ConfirmNumber({super.key});

  @override
  State<ConfirmNumber> createState() => _ConfirmNumberState();
}

class _ConfirmNumberState extends State<ConfirmNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Konfirmasi Nomor Kamu',
              style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            const SizedBox(height: 12),
            Text(
              'Masukkan kode yang telah dikirim via SMS\nmelalui nomor +6666666666666',
              style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff818181)),
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.only(right: 35),
              child: OtpTextField(
                numberOfFields: 5,
                showFieldAsBox: true,
                borderRadius: BorderRadius.circular(6),
                fieldWidth: 55,
                borderColor: Colors.black,
                cursorColor: Colors.black,
                focusedBorderColor: Colors.black,
                keyboardType: TextInputType.phone,
              ),
            ),
            const SizedBox(height: 24),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: Text('Belum menerima kode? Kirim ulang'),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  backgroundColor: Colors.black,
                  fixedSize: const Size(328, 48),
                  elevation: 0),
              child: const Text(
                'Verifikasi Kode',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
