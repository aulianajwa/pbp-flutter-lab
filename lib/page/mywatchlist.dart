import 'package:counter_7/getData.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:counter_7/page/mywatchlist_detail.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';

class MyWatchList extends StatefulWidget {
  const MyWatchList({super.key});

  @override
  State<MyWatchList> createState() => _MyWatchListState();
}

class _MyWatchListState extends State<MyWatchList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Watch List'),
        ),
        drawer: buildDrawer(context),
        body: FutureBuilder(
            future: fetchToDo(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada to do list :(",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index) => Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 4, vertical: 0),
                            child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  child: ListTile(
                                    title: Text(
                                        "${snapshot.data![index].title}",
                                        style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MyWatchListPage(
                                                      data: snapshot
                                                          .data![index])));
                                    },
                                  ),
                                )),
                          ));
                }
              }
            }));
  }
}
