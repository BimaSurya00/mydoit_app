import 'package:flutter/material.dart';

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
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.abc,
          color: Colors.black,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 137,
            height: 31,
            color: Colors.grey,
          ),
          Text('Selamat Datang Kembali'),
          Text('Mengelola Ulang dengan Mudah dan Aman'),
          Container(
            width: 328,
            height: 407,
            child: Column(
              children: [
                TextField(),
                TextField(),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Masuk'),
                ),
                Text('---------Atau Masuk Dengan-----------'),
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(Icons.abc),
                      Text("Google"),
                    ],
                  ),
                ),
                Text('Belum punya akun? Daftar di sini')
              ],
            ),
          )
        ],
      ),
    );
  }
}
