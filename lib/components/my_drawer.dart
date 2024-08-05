import 'package:flutter/material.dart';
import 'package:fud_app/components/my_drawer_tile.dart';
import 'package:fud_app/pages/settings_page.dart';

class MeDrawer extends StatelessWidget {
  
  const MeDrawer({super.key, });
  // void logout() {
  //   final auth = AuthService();
  //   auth.signOut();
  // }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Icon(
                  Icons.lock_open_rounded,
                  color: Theme.of(context).colorScheme.inversePrimary,
                  size: 80,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Divider(
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
              MyDrawerTile(
                text: "H O M E",
                icon: Icons.home,
                onTap: () => Navigator.pop(context),
              ),
              MyDrawerTile(
                text: "S E T T I N G S",
                icon: Icons.settings,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingsPage(),
                    ),
                  );
                },
              ),
              const Spacer(),
              MyDrawerTile(
                text: "L O G O U T",
                icon: Icons.home,
                onTap: () {},
              ),
              const SizedBox(height: 25),
            ],
          ),

          // Padding(
          //   padding: const EdgeInsets.only(left: 25.0, bottom: 25.0),
          //   child: ListTile(
          //     title: const Text("L O G O U T"),
          //     leading: const Icon(Icons.logout),
          //     onTap: () {},
          //   ),
          // ),
        ],
      ),
    );
  }
}
