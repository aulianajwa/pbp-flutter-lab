import 'package:counter_7/page/form.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/dataBudget.dart';
import 'package:counter_7/page/mywatchlist.dart';

Drawer buildDrawer(BuildContext context) {
  return Drawer(
    child: Column(
      children: [
        ListTile(
          title: const Text('counter_7'),
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const MyHomePage()));
          },
        ),
        ListTile(
          title: const Text('Tambah Budget'),
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const MyFormPage()));
          },
        ),
        ListTile(
          title: const Text('Dataaa Budget'),
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const MyDataPage()));
          },
        ),
        ListTile(
          title: const Text('My Watch List'),
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const MyWatchList()));
          },
        ),
      ],
    ),
  );
}
