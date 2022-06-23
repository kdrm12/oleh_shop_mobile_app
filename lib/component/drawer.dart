import 'package:flutter/material.dart';

Drawer drawer(BuildContext context) {
  return Drawer(
    child: Column(
      children: [
        const UserAccountsDrawerHeader(
          accountName: Text("Kevin"),
          accountEmail: Text("081285770221"),
        ),
        ListTile(
          selected: true,
          leading: const CircleAvatar(
            child: Icon(
              Icons.home,
              color: Colors.white,
              size: 20.0,
            ),
          ),
          title: const Text("Home"),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/home');
          },
        ),
        const ListTile(
          selected: true,
          leading: CircleAvatar(
            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 20.0,
            ),
          ),
          title: Text("Keranjang"),
          //onTap: () {},
        ),
        ListTile(
          selected: true,
          leading: const CircleAvatar(
            child: Icon(
              Icons.list_alt,
              color: Colors.white,
              size: 20.0,
            ),
          ),
          title: const Text("Pesanan"),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/pesanan');
          },
        ),
        ListTile(
          selected: true,
          leading: const CircleAvatar(
            child: Icon(
              Icons.logout,
              color: Colors.white,
              size: 20.0,
            ),
          ),
          title: const Text("Log Out"),
          onTap: () {
            Navigator.pushReplacementNamed(context, '/logout');
          },
        ),
      ],
    ),
  );
}
