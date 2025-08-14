import 'package:flutter/material.dart';

import 'main.dart';

class Achievement extends StatelessWidget {
  const Achievement({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Course And certificate", style: sectionTitleStyle),
            SizedBox(height: 24),

            Text(
              "Mengikuti beberapa kelas Web di Dicoding"
              "Indonesia, serta sudah menyelesaikan-nya",
            ),
            SizedBox(height: 12),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 160,
                  height: 112,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/web1.png"),
                    ),
                  ),
                ),

                Container(
                  width: 160,
                  height: 112,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/web2.png"),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 24),
            Text(
              "Mengikuti beberapa kelas Web di Dicoding"
              "Indonesia, serta sudah menyelesaikan-nya",
            ),
            SizedBox(height: 12),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 160,
                  height: 112,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/web1.png"),
                    ),
                  ),
                ),

                Container(
                  width: 160,
                  height: 112,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/web2.png"),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24),

            Text(
              "Mengikuti beberapa kelas Web di Dicoding"
              "Indonesia, serta sudah menyelesaikan-nya",
            ),
            SizedBox(height: 12),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 160,
                  height: 112,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/web1.png"),
                    ),
                  ),
                ),

                Container(
                  width: 160,
                  height: 112,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/web2.png"),
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
}
