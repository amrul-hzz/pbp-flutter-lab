import 'package:flutter/material.dart';
import 'package:tugas_flutter_pbp/model/mywatchlist.dart';
import 'package:tugas_flutter_pbp/drawer.dart';

class ShowWatchListDetailsPage extends StatefulWidget {
  ShowWatchListDetailsPage({super.key, this.watchlistItem});
  var watchlistItem;

  @override
  State<ShowWatchListDetailsPage> createState() => _ShowWatchListDetailsPageState();

}

class _ShowWatchListDetailsPageState extends State<ShowWatchListDetailsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail")),
      drawer: const MyDrawer(),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(''),
            Text(
              widget.watchlistItem.fields.title,
              textAlign: TextAlign.center,
              overflow: TextOverflow.fade,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),

            const Text(''),

            RichText(
              text: TextSpan(
                text: 'Release Date: ',
                style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                    text: '${widget.watchlistItem.fields.releaseDate}',
                    style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                    )
                  )
                ]
              )
            ),

            RichText(
              text: TextSpan(
                text: 'Rating: ',
                style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                    text: '${widget.watchlistItem.fields.rating}/10',
                    style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                    )
                  )
                ]
              )
            ),

            RichText(
              text: TextSpan(
                text: 'Status: ',
                style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                    text: '${widget.watchlistItem.fields.watched ? "watched" : "not watched"}',
                    style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                    )
                  )
                ]
              )
            ),

            RichText(
              text: TextSpan(
                text: 'Review: ',
                style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                    text: '${widget.watchlistItem.fields.review}',
                    style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                    )
                  )
                ]
              )
            ),

            Expanded(child: Container()),

            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Back"),
            ),
          ]
          
        )
        
      )
    );
  }
}