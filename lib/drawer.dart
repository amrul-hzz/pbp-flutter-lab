import 'package:flutter/material.dart';
import 'package:tugas_flutter_pbp/model/budget.dart';
import 'package:tugas_flutter_pbp/drawer.dart';
import 'package:tugas_flutter_pbp/main.dart';
import 'package:tugas_flutter_pbp/page/add_budget.dart';
import 'package:tugas_flutter_pbp/page/data_budget.dart';
import 'package:tugas_flutter_pbp/page/mywatchList_page.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Menambahkan clickable menu
          ListTile(
            title: const Text('counter_7'),
            onTap: () {
              // Route menu ke halaman utama
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        const MyHomePage(title: "Program Counter")),
              );
            },
          ),

          ListTile(
            title: const Text('Tambah Budget'),
            onTap: () {
              // Route menu ke halaman form
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const AddBudgetPage()),
              );
            },
          ),

          ListTile(
            title: const Text('Data Budget'),
            onTap: () {
              // Route menu ke halaman form
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const DataBudgetPage()),
              );
            },
          ),

          ListTile(
            title: const Text('MyWatchList'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyWatchListPage()),
              );
            }
          )
        ],
      ),
    );
  }
}
