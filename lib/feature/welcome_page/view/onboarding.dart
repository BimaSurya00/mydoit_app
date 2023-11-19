import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:mydoit_app/feature/landing_page/view/landing_page.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: 'Selamat datang \ndi MyDoit!',
          body:
              'Dapatkan perlindungan, investasi, dan\nperencanaan keuangan yang lebih baik.',
          image: Container(
            width: double.infinity,
            child: Image.asset(
              'assets/images/1.png',
              fit: BoxFit.cover,
            ),
          ),
          decoration: PageDecoration(
            imageFlex: 3,
            bodyFlex: 2,
            titlePadding: const EdgeInsets.only(bottom: 15, top: 1),
            bodyTextStyle: GoogleFonts.inter(
                color: const Color(0xff818181),
                fontSize: 14,
                fontWeight: FontWeight.w400),
            titleTextStyle:
                GoogleFonts.inter(fontSize: 32, fontWeight: FontWeight.w600),
          ),
        ),
        PageViewModel(
          title: 'Kelola keuangan\ndengan mudah',
          body: 'Solusi finansial lengkap, mudah, dan tepat\nsasaran.',
          image: Container(
              width: double.infinity,
              child: Image.asset(
                'assets/images/2.png',
                fit: BoxFit.cover,
              )),
          decoration: PageDecoration(
            // safeArea: 9,
            imageFlex: 3,
            bodyFlex: 2,
            titlePadding: const EdgeInsets.only(bottom: 15, top: 1),
            bodyTextStyle: GoogleFonts.inter(
                color: const Color(0xff818181),
                fontSize: 14,
                fontWeight: FontWeight.w400),
            titleTextStyle:
                GoogleFonts.inter(fontSize: 32, fontWeight: FontWeight.w600),
          ),
        ),
        PageViewModel(
          title: 'Sederhanakan\nKeuanganmu',
          body:
              'Ucapkan selamat tinggal pada tekanan finansial,\nkami bantu sederhanakan keuanganmu.',
          image: Container(
              width: double.infinity,
              child: Image.asset(
                'assets/images/3.png',
                fit: BoxFit.cover,
              )),
          decoration: PageDecoration(
            // safeArea: 9,
            imageFlex: 3,
            bodyFlex: 2,
            titlePadding: const EdgeInsets.only(bottom: 15, top: 1),
            bodyTextStyle: GoogleFonts.inter(
                color: const Color(0xff818181),
                fontSize: 14,
                fontWeight: FontWeight.w400),
            titleTextStyle:
                GoogleFonts.inter(fontSize: 32, fontWeight: FontWeight.w600),
          ),
        ),
        PageViewModel(
          title: 'Panduan yang\nDipersonalisasi',
          body:
              'Wawasan dan rekomendasi yang dipersonalisasi,\nuntuk masa depan finansialmu.',
          image: Container(
              width: double.infinity,
              child: Image.asset(
                'assets/images/4.png',
                fit: BoxFit.cover,
              )),
          decoration: PageDecoration(
            // safeArea: 9,
            imageFlex: 3,
            bodyFlex: 2,
            titlePadding: const EdgeInsets.only(bottom: 15, top: 1),
            bodyTextStyle: GoogleFonts.inter(
                color: const Color(0xff818181),
                fontSize: 14,
                fontWeight: FontWeight.w400),
            titleTextStyle:
                GoogleFonts.inter(fontSize: 32, fontWeight: FontWeight.w600),
          ),
        ),
        PageViewModel(
          title: 'Keamanan yang\nKuat',
          body: 'Bersama kami, kelola keuanganmu dengan lebih\npercaya diri.',
          image: Container(
              width: double.infinity,
              child: Image.asset(
                'assets/images/5.png',
                fit: BoxFit.cover,
              )),
          decoration: PageDecoration(
            // safeArea: 9,
            imageFlex: 3,
            bodyFlex: 2,
            titlePadding: const EdgeInsets.only(bottom: 15, top: 1),
            bodyTextStyle: GoogleFonts.inter(
                color: const Color(0xff818181),
                fontSize: 14,
                fontWeight: FontWeight.w400),
            titleTextStyle:
                GoogleFonts.inter(fontSize: 32, fontWeight: FontWeight.w600),
          ),
        )
      ],
      onDone: () {},
      dotsDecorator: const DotsDecorator(
          activeColor: Colors.black,
          activeSize: Size(16, 6),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)))),
      showBackButton: false,
      showDoneButton: false,
      showSkipButton: false,
      showNextButton: false,
      globalFooter: Padding(
        padding: const EdgeInsets.only(bottom: 64, top: 55),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const LandingPage1(),
                ));
          },
          style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              backgroundColor: Colors.white,
              fixedSize: const Size(328, 56),
              elevation: 0,
              side: const BorderSide(color: Color(0xff00D27F))),
          child: const Text(
            'Mulai',
            style: TextStyle(color: Color(0xff00D27F)),
          ),
        ),
      ),
    );
  }
}
