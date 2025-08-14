import 'package:flutter/material.dart';
import 'main.dart';

// Widget utama untuk halaman login
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold dengan warna latar belakang gelap
    return Scaffold(
      backgroundColor: const Color(0xFF454B52), // Warna abu-abu gelap
      body: Center(
        child: Container(
          // Container utama dengan sudut membulat dan warna latar belakang lebih terang
          width: MediaQuery.of(context).size.width * 0.8,
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
          decoration: BoxDecoration(
            color: const Color(0xFF5A616A), // Warna abu-abu terang
            borderRadius: BorderRadius.circular(20), // Sudut sangat membulat
          ),
          child: Column(
            mainAxisSize: MainAxisSize
                .min, // Agar Column tidak memakan seluruh ruang vertikal
            children: <Widget>[
              // Input field untuk Username
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Username',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                decoration: InputDecoration(
                  fillColor: const Color(
                    0xFF868C93,
                  ), // Warna latar belakang input
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      10,
                    ), // Sudut input membulat
                    borderSide: BorderSide.none, // Hilangkan border
                  ),
                ),
              ),
              const SizedBox(height: 32),
              // Input field untuk Password
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8),
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  fillColor: const Color(0xFF868C93),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              // Tombol Login berbentuk lingkaran
              SizedBox(
                width: 100, // Menentukan lebar
                height: 100, // Menentukan tinggi
                child: ElevatedButton(
                  onPressed: () {
                    // Logika untuk navigasi atau autentikasi di sini
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return MyApp();
                        },
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(
                      0xFF868C93,
                    ), // Warna latar belakang tombol
                    shape: const CircleBorder(), // Membuat tombol lingkaran
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.black, // Warna teks
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget placeholder untuk halaman setelah login.
class Hal2 extends StatelessWidget {
  const Hal2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Setelah Login')),
      body: const Center(
        child: Text(
          'Selamat, Anda Berhasil Login!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
