import 'package:flutter/material.dart';
import 'package:tugas_flutter_pbp/model/budget.dart';
import 'package:tugas_flutter_pbp/drawer.dart';
import 'package:tugas_flutter_pbp/main.dart';
import 'package:tugas_flutter_pbp/page/add_budget.dart';
import 'package:tugas_flutter_pbp/page/data_budget.dart';

class DataBudgetPage extends StatefulWidget {
  const DataBudgetPage({super.key});

  @override
  State<DataBudgetPage> createState() => _DataBudgetPageState();
}

class _DataBudgetPageState extends State<DataBudgetPage> {
  static List<Budget> createdBudgets = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Data Budget')),
        drawer: const MyDrawer(),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          createdBudgets == null || createdBudgets.isEmpty
              ? Center(
                  child: Column(children: [
                    const Text('Tidak ada data untuk ditampilkan'),
                  ]),
                )
              : Expanded(
                  child: ListView.builder(
                      itemCount: createdBudgets.length,
                      itemBuilder: (context, index) {
                        return Card(
                            child: ListTile(
                          title: Text(createdBudgets[index].judul),
                          subtitle:
                              Text(createdBudgets[index].nominal.toString()),
                          trailing: Column(
                            children: [
                              Text(createdBudgets[index].jenis.toString()),
                              Text(createdBudgets[index].tanggal)
                            ],
                          ),
                        ));
                      }))
        ]));
  }
}

void setBudget(String judul, int nominal, String? jenis, String tanggal) {
  Budget newBudget = Budget(judul, nominal, jenis, tanggal);
  _DataBudgetPageState.createdBudgets.add(newBudget);
}
