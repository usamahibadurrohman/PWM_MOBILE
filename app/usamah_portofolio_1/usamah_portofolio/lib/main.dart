import 'package:flutter/material.dart';

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
    return MaterialApp(title: 'My portofolio', home: const HomePage());
  }
}

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
        SizedBox(height: 4),
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
          SizedBox(height: 4),
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

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            padding: EdgeInsets.only(right: 16.0),
            child: Center(
              child: Text("Home Page", style: TextStyle(fontSize: 20)),
            ),
          ),
        ],

        backgroundColor: const Color.fromARGB(255, 0, 255, 255),
      ),

      body: Padding(
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
                    color: Colors.cyan,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 42),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
            SizedBox(height: 24),
            Divider(thickness: 1.4, color: Colors.black),
            SizedBox(height: 24),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Bio", style: sectionTitleStyle),
                const Text(
                  "Saya Usamah Ibadurrohman, seorang Junior Flutter"
                  "Developer yang memiliki ketertarikan dalam pengembangan"
                  "Fullstack. Saya antusias terhadap teknologi  dan "
                  "memiiki minat khusus dalam bidang data science.",
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
            SizedBox(height: 36),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Highlight Skills", style: sectionTitleStyle),
                Row(
                  children: [
                    Column(
                      children: [
                        buildProgressbar(
                          label: "Leadership",
                          percentage: 0.43,
                          color: const Color.fromARGB(255, 0, 207, 255),
                        ),
                        buildProgressbar(
                          label: "Teamwork",
                          percentage: 0.72,
                          color: Color.fromARGB(255, 0, 229, 176),
                        ),
                        buildProgressbar(
                          label: "Problem Solving",
                          percentage: 0.4,
                          color: Color.fromARGB(255, 165, 102, 255),
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        buildReverseProgressbar(
                          label: "Flutter",
                          percentage: 0.37,
                          color: Color.fromARGB(255, 0, 72, 255),
                        ),
                        buildReverseProgressbar(
                          label: "Python",
                          percentage: 0.78,
                          color: Color.fromARGB(255, 255, 166, 0),
                        ),
                        buildReverseProgressbar(
                          label: "Design",
                          percentage: 0.3,
                          color: Color.fromARGB(255, 255, 0, 0),
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
