import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';

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
          image: Image.network(
            'https://i.pinimg.com/564x/31/b8/32/31b83276ea268d972a6a9481133cc348.jpg',
            width: double.infinity,
            height: 350,
          ),
          decoration: PageDecoration(
            safeArea: 9,
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
          image: Image.network(
            'https://i.pinimg.com/564x/31/b8/32/31b83276ea268d972a6a9481133cc348.jpg',
            width: 350,
          ),
          decoration: PageDecoration(
            safeArea: 9,
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
          image: Image.network(
            'https://i.pinimg.com/564x/31/b8/32/31b83276ea268d972a6a9481133cc348.jpg',
            width: 350,
          ),
          decoration: PageDecoration(
            safeArea: 9,
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
          image: Image.network(
            'https://i.pinimg.com/564x/31/b8/32/31b83276ea268d972a6a9481133cc348.jpg',
            width: 350,
          ),
          decoration: PageDecoration(
            safeArea: 9,
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
          image: Image.network(
            'https://i.pinimg.com/564x/31/b8/32/31b83276ea268d972a6a9481133cc348.jpg',
            width: 350,
          ),
          decoration: PageDecoration(
            safeArea: 9,
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
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              backgroundColor: Colors.white,
              fixedSize: const Size(328, 56),
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
