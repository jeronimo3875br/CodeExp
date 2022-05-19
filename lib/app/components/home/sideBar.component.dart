import "package:flutter/material.dart";
import "package:codeexp/app/components/notificationBrand.component.dart";

class SideBar extends StatelessWidget {
  String email;
  String username;
  String profileImage;
  String profileBanner;

  SideBar({
    Key? key,
    required this.email,
    required this.username,
    required this.profileBanner,
    required this.profileImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(username),
            accountEmail: Text(email),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  profileImage,
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  profileBanner,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Favorites"),
          ),
          const ListTile(
            leading: Icon(Icons.group),
            title: Text("Friends"),
          ),
          const ListTile(
            leading: Icon(Icons.share),
            title: Text("Share"),
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text("Requests"),
            trailing: NotificationBrand(
              notification: 10,
            ),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
          const ListTile(
            leading: Icon(Icons.description),
            title: Text("Policies"),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Exit"),
          ),
        ],
      ),
    );
  }
}
