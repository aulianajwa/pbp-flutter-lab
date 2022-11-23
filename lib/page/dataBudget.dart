import 'package:counter_7/main.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/model/budget.dart';
import 'package:flutter/material.dart';

class MyDataPage extends StatefulWidget {
  const MyDataPage({super.key});

  @override
  State<MyDataPage> createState() => _MyDataPageState();
}

class _MyDataPageState extends State<MyDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Data Budget'),
        ),
        drawer: Drawer(
            child: Column(children: [
          ListTile(
            title: const Text('Counter_7'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            },
          ),
          ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyFormPage()),
                );
              }),
          ListTile(
              title: const Text('Data Budget'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const MyDataPage()),
                );
              })
        ])),
        body: ListView.builder(
          itemBuilder: ((context, index) {
            return Card(
                child: Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                Budget.listBudget[index].judul,
                                style: const TextStyle(fontSize: 25),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    Budget.listBudget[index].nominal.toString(),
                                    style: const TextStyle(fontSize: 25),
                                  ),
                                  Text(
                                    Budget.listBudget[index].jenis,
                                    style: const TextStyle(fontSize: 25),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    )));
          }),
          itemCount: Budget.listBudget.length,
        ));
  }
}
