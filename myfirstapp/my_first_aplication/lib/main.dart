import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'My Portofolio'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // appbar
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(
          "My Portofolio",
          style: TextStyle(
            color: const Color.fromARGB(255, 0, 15, 32),
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 42),
            Row(
              children: [
                Container(
                  height: 125,
                  width: 125,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(75),
                  ),
                  child: const Center(
                    child: Text("ijoo", style: TextStyle(fontSize: 18)),
                  ),
                ),
                const SizedBox(width: 24),
                const Text("Starfall", style: TextStyle(fontSize: 38)),
              ],
            ),
            SizedBox(height: 25),

            Divider(
              thickness: 1.8,
              color: Colors.black,
            ), //garis pemisah bagian atau widget

            const SizedBox(height: 25),
            const Text(
              "BIO",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const Text(
              "Saya seorang junior Flutter Developer. "
              "Saya tertarik untuk menjadi fullstack Developer. "
              "Saya suka belajar teknologi baru yang bisa membantu banyak orang.",
              style: TextStyle(fontSize: 18),
              textAlign: TextAlign.justify,
            ),

            const SizedBox(height: 26),
            Divider(thickness: 1.4, color: Colors.black),
            const SizedBox(height: 26),

            Row(
              children: [
                Container(
                  height: 100,
                  width: 150,
                  color: Colors.red,
                  child: const Center(
                    child: Text(
                      "Red",
                      style: TextStyle(fontSize: 18, color: Colors.blue),
                    ),
                  ),
                ),

                SizedBox(width: 42),

                Container(
                  height: 100,
                  width: 150,
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      "Blue",
                      style: TextStyle(fontSize: 18, color: Colors.red),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
