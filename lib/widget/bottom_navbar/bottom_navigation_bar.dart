import 'package:flutter/material.dart';
import 'package:mydoit_app/feature/anggaran/view/anggaran_view.dart';
import 'package:mydoit_app/feature/history/view/riwayat_transaksi_view.dart';
import 'package:mydoit_app/feature/home/view/home_view.dart';
import 'package:mydoit_app/feature/home/widget/pop_up_navbar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int index = 0;

  final List pages = [const HomePage(), const AnggaranView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: SizedBox(
        width: 83,
        height: 83,
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: SizedBox(
            height: 75,
            width: 75,
            child: FloatingActionButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return const PopUpNavbar();
                  },
                );
              },
              backgroundColor: const Color(0xff64E4B1),
              foregroundColor: Colors.white,
              elevation: 0,
              child: Center(child: const Icon(Icons.add, size: 50)),
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          currentIndex: index,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.green,
          showUnselectedLabels: true,
          elevation: 0,
          iconSize: 25,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart), label: 'Anggaran'),
            BottomNavigationBarItem(label: '', icon: Container()),
            BottomNavigationBarItem(
                icon: Icon(Icons.mobiledata_off_rounded), label: 'Transaksi'),
            BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'Lainnya'),
          ],
        ),
      ),
      // bottomNavigationBar: const BottomAppBar(
      //   notchMargin: 5.0,
      //   shape: CircularNotchedRectangle(),
      //   color: Colors.white,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     mainAxisSize: MainAxisSize.max,
      //     children: [
      //       Padding(
      //         padding: EdgeInsets.only(left: 10.0),
      //         child: Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             Icon(
      //               Icons.home,
      //               color: Color(0xff00D27F),
      //             ),
      //             Text(
      //               "Home",
      //               style: TextStyle(color: Color(0xff00D27F)),
      //             )
      //           ],
      //         ),
      //       ),
      //       Padding(
      //         padding: EdgeInsets.only(right: 20.0, top: 10.0, bottom: 10.0),
      //         child: Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             Icon(
      //               Icons.bar_chart,
      //               color: Color(0xff00D27F),
      //             ),
      //             Text(
      //               "Anggaran",
      //               style: TextStyle(color: Color(0xff00D27F)),
      //             )
      //           ],
      //         ),
      //       ),
      //       Padding(
      //         padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
      //         child: Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             Icon(
      //               Icons.keyboard_double_arrow_up_outlined,
      //               color: Color(0xff00D27F),
      //             ),
      //             Text(
      //               "Transaksi",
      //               style: TextStyle(color: Color(0xff00D27F)),
      //             )
      //           ],
      //         ),
      //       ),
      //       Padding(
      //         padding: EdgeInsets.only(right: 10.0),
      //         child: Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             Icon(
      //               Icons.settings,
      //               color: Color(0xff00D27F),
      //             ),
      //             Text(
      //               "Lainnya",
      //               style: TextStyle(color: Color(0xff00D27F)),
      //             )
      //           ],
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
