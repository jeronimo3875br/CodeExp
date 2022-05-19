import "package:flutter/material.dart";

class ProjectCard extends StatelessWidget {
  String title;
  bool isVisible;
  String description;

  ProjectCard({
    Key? key,
    required this.title,
    required this.description,
    required this.isVisible,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                (isVisible)
                    ? const Icon(
                        Icons.visibility,
                        color: Colors.deepOrange,
                      )
                    : const Text(""),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(description),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Visualizar"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
