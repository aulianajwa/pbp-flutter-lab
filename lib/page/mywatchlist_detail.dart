import 'package:flutter/material.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:counter_7/model/watchlist.dart';

class MyWatchListPage extends StatelessWidget {
  final WatchList data;
  const MyWatchListPage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Watch List'),
      ),
      drawer: buildDrawer(context),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Center(
                child: Text(
              data.title,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            )),
            Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Text('Release Date: ',
                        style: TextStyle(fontSize: 16)),
                    Text(data.releaseDate, style: TextStyle(fontSize: 16)),
                  ],
                )
              ],
            ),
            Row(
              children: [
                const Text('Rating : ', style: TextStyle(fontSize: 16)),
                Text(data.rating.toString() + "/10",
                    style: TextStyle(fontSize: 16)),
              ],
            ),
            Row(
              children: [
                const Text('Status : ', style: TextStyle(fontSize: 16)),
                Text(data.watched ? "watched" : "unwatched",
                    style: TextStyle(fontSize: 16)),
              ],
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text('Review : ',
                  style: TextStyle(fontSize: 16), textAlign: TextAlign.left),
            ),
            Row(
              children: [
                Flexible(
                    child: Text(data.review, style: TextStyle(fontSize: 16)))
              ],
            )
          ],
        ),
      ),
      persistentFooterButtons: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            minimumSize: const Size.fromHeight(40),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Back', style: TextStyle(fontSize: 13)),
        )
      ],
    );
  }
}
