import "package:flutter/material.dart";
import "../models/projects.model.dart";
import "../repositories/projects.repository.dart";
import "../components/home/sideBar.component.dart";
import 'package:codeexp/app/models/projects.model.dart';
import "../components/home/botomNavigationBar.component.dart";
import "package:codeexp/app/components/projects/projectCard.component.dart";

class Home extends StatefulWidget {
  @override
  State<Home> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  List<ProjectModel> projects = ProjectRepository.projects;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CodeExp"),
        centerTitle: true,
        actions: const [
          Icon(Icons.person),
        ],
      ),
      body: Center(
        child: ListView.separated(
          padding: const EdgeInsets.all(5),
          itemBuilder: (BuildContext context, int index) {
            return ProjectCard(
              title: projects[index].title,
              description: projects[index].description,
              isVisible: projects[index].isVisible,
            );
          },
          separatorBuilder: (context, widget) => const Divider(),
          itemCount: projects.length,
        ),
      ),
      drawer: SideBar(
        username: "Gabriel Jeronimo",
        email: "admin@codeexp.com.br",
        profileImage: "assets/images/profile.jpg",
        profileBanner: "assets/images/banner.jpg",
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
