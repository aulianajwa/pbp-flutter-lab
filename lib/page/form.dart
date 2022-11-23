import 'package:counter_7/page/dataBudget.dart';
import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/model/Budget.dart';

void main() {
  runApp(const MyFormPage());
}

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _judul = "";
  int _nominal = 0;
  String _pilih = "Pemasukan";
  List<String> __jenis = ["Pengeluaran", "Pemasukan"];

  bool isNumeric(String value) {
    if (value == null) {
      return false;
    }
    return int.tryParse(value) != null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Form'),
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
              }),
        ])),
        body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Contoh: Beli Sate Pacil",
                            labelText: "Judul",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onChanged: (String? value) {
                            setState(() {
                              _judul = value!;
                            });
                          },
                          onSaved: (String? value) {
                            setState(() {
                              _judul = value!;
                            });
                          },
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Judul tidak boleh kosong!';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Contoh: 100000",
                            labelText: "Nominal",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          onChanged: (String? value) {
                            setState(() {
                              _nominal = int.parse(value!);
                            });
                          },
                          onSaved: (String? value) {
                            setState(() {
                              _nominal = value! as int;
                            });
                          },
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Nominal tidak boleh kosong!';
                            }
                            if (!isNumeric(value)) {
                              return 'Nominal harus berupa angka!';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: DropdownButton(
                            value: _pilih,
                            hint: const Text("Pilih Jenis"),
                            icon: const Icon(Icons.keyboard_arrow_down),
                            items: __jenis.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            onChanged: (String? value) {
                              setState(() {
                                _pilih = value!;
                              });
                            },
                          ),
                        ),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Budget.listBudget.add(Budget(
                              judul: _judul,
                              nominal: _nominal,
                              jenis: _pilih,
                            ));

                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyFormPage()),
                            );

                            for (var i in Budget.listBudget) {
                              print("judul : " + i.judul);
                              print("nominal : " + i.nominal.toString());
                              print("pilihan : " + i.jenis);
                            }
                          }
                        },
                        child: const Text(
                          "Simpan",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  )),
            )));
  }
}
