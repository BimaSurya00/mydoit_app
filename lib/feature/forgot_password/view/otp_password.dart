import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class OtpPassword extends StatefulWidget {
  const OtpPassword({super.key});

  @override
  State<OtpPassword> createState() => _OtpPasswordState();
}

class _OtpPasswordState extends State<OtpPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lupa Password',
              style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            const SizedBox(height: 12),
            Text(
              'Masukkan kode OTP yang telah dikirim melalui\nemail j**o@mydoit.id',
              style: GoogleFonts.inter(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: const Color(0xff818181),
              ),
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
            const Text('Kirim ulang kode dalam waktu 00:50'),
            const SizedBox(height: 32),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  backgroundColor: Colors.black,
                  fixedSize: const Size(328, 48),
                  elevation: 0),
              child: const Text(
                'Kirim OTP',
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
