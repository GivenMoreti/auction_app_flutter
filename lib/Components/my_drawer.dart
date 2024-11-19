import 'package:flutter/material.dart';


class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // DrawerHeader(
          //   child: ListTile(
          //     leading: Icon(Icons.image),
          //   ),
          // ),

          // //home page
          // DrawerListTile(
          //     icon: Icon(Icons.home),
          //     subtitle: "Home",
          //     onTap: () {
          //       Navigator.pop(context);
          //     }),

          // //modify your selection
          // DrawerListTile(
          //   icon: Icon(Icons.person),
          //   subtitle: "Profile",
          //   onTap: () {
          //     Navigator.pop(context);
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) {
          //           return ProfilePage();
          //         },
          //       ),
          //     );
          //   },
          // ),

          // //log in page

          // DrawerListTile(
          //   icon: Icon(Icons.login),
          //   subtitle: "Login",
          //   onTap: () {
          //     Navigator.pop(context);
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) {
          //           return LoginPage();
          //         },
          //       ),
          //     );
          //   },
          // ),

          //
        ],
      ),
    );
  }
}
