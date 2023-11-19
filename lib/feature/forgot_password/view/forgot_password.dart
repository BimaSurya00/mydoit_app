import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydoit_app/feature/forgot_password/view/otp_password.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
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
            const SizedBox(height: 20),
            Text(
              'Email',
              style:
                  GoogleFonts.inter(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 8),
            SizedBox(
              width: 328,
              height: 48,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: const BorderSide(color: Color(0xff818181)),
                  ),
                  hintText: 'Masukan email kamu',
                ),
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Kami akan mengirim one time password (OTP) ke email\nyang sudah kamu daftarkan',
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xff818181),
              ),
            ),
            SizedBox(height: 34),
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
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OtpPassword(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
