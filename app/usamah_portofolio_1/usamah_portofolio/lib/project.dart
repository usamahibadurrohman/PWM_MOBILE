import 'package:flutter/material.dart';
import 'main.dart';

// Ini adalah widget untuk halaman Project.
// Anda bisa mengisi konten di sini nanti.
class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("My Project", style: sectionTitleStyle),
            const SizedBox(height: 24),

            ProjectCard(
              title: "UI Design",
              description: "Re-design ui spotify menggunakan figma",
              imageUrl: "assets/uiux.png",
            ),

            SizedBox(height: 36),

            ProjectCard(
              title: "Website",
              description:
                  "Membuat sebuah website article menggunakan html, css",
              imageUrl: "assets/articweb.jpg",
            ),

            SizedBox(height: 36),

            ProjectCard(
              title: "Thunkable App",
              description: "Membuat aplikasi Quiz menggunakan thunkable",
              imageUrl: "assets/quizaplication.png",
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final bool isFirstImage;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    this.isFirstImage = false,
  });

  @override
  Widget build(BuildContext context) {
    final List<Widget> rowChildren = [
      Expanded(
        child: Text(
          description,
          style: TextStyle(fontSize: 14, color: Colors.grey[700]),
        ),
      ),
      const Spacer(flex: 1),
      Container(
        width: 180,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ];

    if (isFirstImage) {
      rowChildren.insert(0, rowChildren.removeLast());
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: sectionTitleStyle.copyWith(fontSize: 22)),
        const SizedBox(height: 8),
        Row(children: rowChildren),
      ],
    );
  }
}
