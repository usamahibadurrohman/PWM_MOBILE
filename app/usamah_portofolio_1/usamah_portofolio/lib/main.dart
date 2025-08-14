import 'package:flutter/material.dart';
// import untuk file atau halaman selain halaman utama
import 'achievement.dart';
import 'project.dart';

const TextStyle sectionTitleStyle = TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.bold,
  color: Color.fromARGB(255, 0, 188, 212),
  fontStyle: FontStyle.italic,
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portofolio',
      theme: ThemeData(primarySwatch: Colors.cyan, fontFamily: 'Roboto'),
      // membuat homepage menajdi halaman utama
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // variable untuk memilih salah satu indeks di bottomnavbar
  int _selectedIndex = 1;

  static const List<Widget> _widgetOptions = <Widget>[
    Project(),
    MainPortofolioPage(),
    Achievement(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Portofolio",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Center(
              child: Text(
                _selectedIndex == 0
                    ? "Project Page"
                    : _selectedIndex == 1
                    ? "Home Page"
                    : "Achievement Page",
                style: const TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 0, 255, 255),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      // bottom navbar
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 36, 36, 36),

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: 'Project',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: 'Achievement',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.cyan,
        unselectedItemColor: const Color.fromARGB(255, 224, 247, 250),
        onTap: _onItemTapped,
      ),
    );
  }
}

class MainPortofolioPage extends StatelessWidget {
  const MainPortofolioPage({super.key});

  // Fungsi-fungsi pembantu untuk membuat progress bar
  Widget buildProgressbar({
    required String label,
    required double percentage,
    required Color color,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label),
          const SizedBox(height: 4),
          Stack(
            children: [
              Container(
                width: 156,
                height: 22,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              Container(
                width: 156 * percentage,
                height: 22,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildReverseProgressbar({
    required String label,
    required double percentage,
    required Color color,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(label),
            const SizedBox(height: 4),
            Stack(
              children: [
                Container(
                  width: 156,
                  height: 22,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    widthFactor: percentage,
                    child: Container(
                      width: 156 * percentage,
                      height: 22,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                Container(
                  width: 115,
                  height: 115,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/profile.png"),
                    ),
                  ),
                ),
                const SizedBox(width: 42),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Hi i'm Usamah",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    Text(
                      "a passionate flutter developer",
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 24),
            const Divider(thickness: 1.4, color: Colors.black),
            const SizedBox(height: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Bio", style: sectionTitleStyle),
                const Text(
                  "Saya Usamah Ibadurrohman, seorang Junior Flutter "
                  "Developer yang memiliki ketertarikan dalam pengembangan "
                  "Fullstack. Saya antusias terhadap teknologi  dan "
                  "memiiki minat khusus dalam bidang data science.",
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
            const SizedBox(height: 36),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Highlight Skills", style: sectionTitleStyle),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildProgressbar(
                          label: "Leadership",
                          percentage: 0.43,
                          color: const Color.fromARGB(255, 0, 207, 255),
                        ),
                        buildReverseProgressbar(
                          label: "Flutter",
                          percentage: 0.37,
                          color: const Color.fromARGB(255, 0, 72, 255),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildProgressbar(
                          label: "Teamwork",
                          percentage: 0.72,
                          color: const Color.fromARGB(255, 0, 229, 176),
                        ),
                        buildReverseProgressbar(
                          label: "Python",
                          percentage: 0.78,
                          color: const Color.fromARGB(255, 255, 166, 0),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildProgressbar(
                          label: "Problem Solving",
                          percentage: 0.4,
                          color: const Color.fromARGB(255, 165, 102, 255),
                        ),
                        buildReverseProgressbar(
                          label: "Design",
                          percentage: 0.3,
                          color: const Color.fromARGB(255, 255, 0, 0),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
