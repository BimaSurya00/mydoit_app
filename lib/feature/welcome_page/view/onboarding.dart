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
          image: Image.asset('assets/icons/Google.png'),
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
          title: 'Kelola polis asuransi\ndengan mudah',
          body: 'Mulai dari asuransi jiwa, kesehatan, properti,\nhingga mobil.',
          image: Image.asset('assets/icons/Google.png'),
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
          title: 'Investasi di berbagai\ninstrumen keuangan',
          body: 'Seperti saham, Obligasi, reksadana, dan mata\nuang kripto.',
          image: Image.asset('assets/icons/Google.png'),
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
          title: 'Transfer dana lebih\ncepat dan aman',
          body:
              'Transfer dana antar rekening bank, dengan cepat\ndan aman termasuk transfer internasional.',
          image: Image.asset('assets/icons/Google.png'),
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
          title: 'Lacak pendapatan\ndan pengeluaran',
          body:
              'Dapatkan insights untuk membantu anda\nmencapai tujuan finansial.',
          image: Image.asset('assets/icons/Google.png'),
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
              side: const BorderSide(color: Colors.black)),
          child: const Text(
            'Mulai',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
