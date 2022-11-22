import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:tugas_flutter_pbp/model/mywatchlist.dart';
import 'package:tugas_flutter_pbp/drawer.dart';
import 'package:tugas_flutter_pbp/page/show_watchlist_details_page.dart';
import 'package:tugas_flutter_pbp/watchlist_fetch.dart';


class MyWatchListPage extends StatefulWidget {
  const MyWatchListPage({super.key});

  @override
  State<MyWatchListPage> createState() => _MyWatchListPageState();
}

class _MyWatchListPageState extends State<MyWatchListPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("MyWatchList")),
      drawer: const MyDrawer(),
      body: FutureBuilder(
        future: fetchMyWatchList(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.data == null) {
            return const Center(child: CircularProgressIndicator());
          } 
          else {
            if (!snapshot.hasData) {
              return Column(
                children: const [
                  Text(
                    "Tidak ada item di MyWatchList :(",
                    style:
                        TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                  ),
                  SizedBox(height: 8),
                ],
              );
            } 
            else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (_, index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: const [
                      BoxShadow(color: Colors.black, blurRadius: 2.0)
                    ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        title: Text('${snapshot.data![index].fields.title}'),
                        trailing: Column(
                          children: [
                            Checkbox(
                              checkColor: Colors.white,

                              fillColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                                if (snapshot.data![index].fields.watched) {
                                  return Colors.blue;
                                }
                                return Colors.red;
                              }),

                              value: snapshot.data![index].fields.watched,

                              onChanged: (bool? value) {
                                setState(() {
                                  snapshot.data![index].fields.watched = value!;
                                });
                              },
                            ),
                          ],
                        ),

                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ShowWatchListDetailsPage(
                                                    watchlistItem:snapshot.data![index]
                                                    )               
                            ),
                          );
                        } 
                      ),  
                    ], 
                  ),
                  
                ),
              );
            }
          }
        }
      )
    );
  }
}
