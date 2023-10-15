import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydoit_app/feature/forgot_password/view/forgot_password.dart';
import 'package:mydoit_app/feature/auth/view/sign_up.dart';
import 'package:mydoit_app/feature/welcome_page/view/onboarding.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 23, left: 30, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 137,
                height: 31,
                color: Colors.grey,
              ),
              const SizedBox(height: 18),
              Text(
                'Selamat Datang Kembali',
                style: GoogleFonts.inter(
                    fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 8),
              Text(
                'Mengelola Ulang dengan Mudah dan Aman',
                style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff818181)),
              ),
              const SizedBox(height: 32),
              const Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Text('Email'),
              ),
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
              const Padding(
                padding: EdgeInsets.only(top: 24, bottom: 8),
                child: Text('Password'),
              ),
              SizedBox(
                width: 328,
                height: 48,
                child: TextField(
                  decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(color: Color(0xff818181)),
                    ),
                    hintText: 'Masukan password kamu',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 224),
                child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ForgotPassword(),
                        )),
                    child: const Text('Lupa Password?')),
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
                  'Masuk',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {},
              ),
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.only(left: 9),
                child: Row(
                  children: [
                    Container(
                      height: 1,
                      width: 74,
                      color: Colors.black,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                    ),
                    const Text('Atau Masuk Dengan'),
                    Container(
                      height: 1,
                      width: 74,
                      color: Colors.black,
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  backgroundColor: Colors.white,
                  fixedSize: const Size(328, 48),
                  elevation: 0,
                  shadowColor: Colors.white,
                  side: const BorderSide(
                    color: Color(0xffE0E0E9),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/Google.png',
                      width: 23,
                      height: 23,
                    ),
                    const SizedBox(width: 16),
                    Text(
                      'Masuk Dengan Google',
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    )
                  ],
                ),
                onPressed: () {},
              ),
              const SizedBox(height: 64),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 55),
                child: TextButton(
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      )),
                  child: RichText(
                    text: TextSpan(
                      text: 'Belum punya akun?',
                      style: GoogleFonts.inter(
                          color: const Color(0xff818181),
                          fontSize: 14), // Gaya teks default
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Daftar di sini',
                          style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
