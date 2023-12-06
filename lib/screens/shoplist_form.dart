import 'package:flutter/material.dart';
// DONE TODO: Impor drawer yang sudah dibuat sebelumnya
import 'package:stok_makanan_mobile/widgets/left_drawer.dart';
<<<<<<< HEAD
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'dart:convert';
import 'package:stok_makanan_mobile/screens/menu.dart';
=======
import 'package:stok_makanan_mobile/screens/shoplist_form.dart';
import 'package:stok_makanan_mobile/widgets/shop_card.dart';
import 'package:stok_makanan_mobile/screens/list_item.dart';
>>>>>>> f2ac2ec83c46ccb5d7c466dce04f76101a804e7d


class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        title: const Center(
          child: Text(
            'Form Tambah Item',
          ),
=======
        title: const Text(
          'Stok Makanan',
>>>>>>> f2ac2ec83c46ccb5d7c466dce04f76101a804e7d
        ),
        backgroundColor: Colors.indigo,
      ),
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
        // Widget wrapper yang dapat discroll
        child: Padding(
          padding: const EdgeInsets.all(10.0), // Set padding dari halaman
          child: Column(
            // Widget untuk menampilkan children secara vertikal
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                child: Text(
                  'Stok Makanan', // Text yang menandakan toko
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // Grid layout
              GridView.count(
                // Container pada card kita.
                primary: true,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: items.map((Item item) {
                  // Iterasi untuk setiap item
                  return ItemCard(item);
                }).toList(),
              ),
            ],
          ),
<<<<<<< HEAD
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Deskripsi",
                labelText: "Deskripsi",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onChanged: (String? value) {
                setState(() {
                  _description = value!;
                });
              },
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return "Deskripsi tidak boleh kosong!";
                }
                return null;
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.indigo),
                ),
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    // Kirim ke Django dan tunggu respons
                    // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                    final response = await request.postJson(
                        "http://veronica-kylie-tugas.pbp.cs.ui.ac.id/create-flutter/",
                        jsonEncode(<String, String>{
                          'name': _name,
                          'amount': _amount.toString(),
                          'description': _description,
                          // TODO: Sesuaikan field data sesuai dengan aplikasimu
                        }));
                    if (response['status'] == 'success') {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Item baru berhasil disimpan!"),
                      ));
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => MyHomePage()),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                        content: Text("Terdapat kesalahan, silakan coba lagi."),
                      ));
                    }
                  }
                },
                child: const Text(
                  "Save",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ])),
=======
        ),
>>>>>>> f2ac2ec83c46ccb5d7c466dce04f76101a804e7d
      ),
    );
  }

  final List<Item> items = [
    Item("Lihat Item", Icons.checklist, Colors.red),
    Item("Tambah Item", Icons.add_shopping_cart, Colors.green),
    Item("Logout", Icons.logout, Colors.blue),
  ];

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".
}

class Item {
  final String name;
  final IconData icon;
  final MaterialColor color;

  Item(this.name, this.icon, this.color);
}