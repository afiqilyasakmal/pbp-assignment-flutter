import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';

class HalamanForm extends StatefulWidget {
    const HalamanForm({super.key});

    @override
    State<HalamanForm> createState() => _HalamanFormState();
}

List<String> judul =[];
List<String> nominal =[];
List<String> tipePilihan =[];

class _HalamanFormState extends State<HalamanForm> {
  final _formKey = GlobalKey<FormState>();
  String _judul = "";
  String _nominal = "";
  String tipeBudget = '';
  List<String> listTipeBudget = ['Pemasukan', 'Pengeluaran'];
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                title: Text('Form Budget'),
            ),
            drawer: myDrawer(context),
            body: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                      Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Misal: Bayar UKT",
                                  labelText: "Judul",
                              ),
                              onChanged: (String? value) {
                                  setState(() {
                                      _judul = value!;
                                  });
                              },
                              onSaved: (String? value) {
                                  setState(() {
                                      _judul = value!;
                                      judul.add(_judul);
                                  });
                              },
                              validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                      return 'Bagian ini harus diisi';
                                  }
                                  return null;
                              },
                          ),
                      ),
                      Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: "Contoh: 1000",
                                  labelText: "Nominal",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(5.0),
                                  ),
                              ),
                              onChanged: (String? value) {
                                  setState(() {
                                      _nominal = value!;
                                  });
                              },
                              onSaved: (String? value) {
                                  setState(() {
                                      _nominal = value!;
                                      nominal.add(_nominal);
                                  });
                              },
                              validator: (String? value) {
                                  if (value == null || value.isEmpty) {
                                      return 'Bagian judul tidak boleh kosong';
                                  }
                                  return null;
                              },
                          ),
                      ),
                      DropdownButtonFormField(
                        decoration: const InputDecoration(
                            hintText: "Pilih Jenis",
                            labelText: "Pilih Jenis",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            ),
                            border: OutlineInputBorder(),
                            
                        ),
                        items: const [
                          DropdownMenuItem(
                            value: "Pemasukan",
                            child: Text("Pemasukan"),
                          ),
                          DropdownMenuItem(
                            value: "Pengeluaran",
                            child: Text("Pengeluaran"),
                          )
                        ],
                        icon: const Icon(Icons.arrow_drop_down_rounded),
                        onChanged: (value) {
                          setState(() {
                            tipeBudget = value!;
                          });
                        },
                        onSaved: (value) {
                          setState(() {
                            tipeBudget = value!;
                            tipePilihan.add(tipeBudget);
                          });
                        },
                        validator: (value) {
                          if (value == null || value == 0) {
                            return "Pilih jenis budget";
                          }
                          return null;
                        },
                      ),
                  ],
                  ),
                ),
              ),
            ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
            padding: const EdgeInsets.all(50.0),
            child: TextButton(
              style: TextButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  fixedSize: const Size.fromHeight(42.0)
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  _formKey.currentState!.reset();
                  showDialog(
                    context: context,
                    builder: (context) {
                      return Dialog(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                        ),
                        elevation: 15,
                        child: ListView(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          shrinkWrap: true,
                          children: <Widget>[
                            Center(
                              child: Column(
                                children: <Widget>[
                                  const Text("Informasi Budget"),
                                  const SizedBox(height: 10),
                                  Text("Budget: $_judul"),
                                  Text("Nominal: $_nominal"),
                                  Text("Jenis: ${tipeBudget}"),
                                  const SizedBox(height: 10),
                                  TextButton(
                                    onPressed: () {
                                      setState(() {
                                      });
                                      Navigator.pop(context);
                                    },
                                    child: const Text("Kembali"),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }
              },
              child: const Text(
                "Simpan",
                style: TextStyle(color: Colors.white),
              ),
            )
        )
        );
    }
}