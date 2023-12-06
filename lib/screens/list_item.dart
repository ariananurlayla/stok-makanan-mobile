import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:stok_makanan_mobile/models/item.dart';
<<<<<<< HEAD
import 'package:stok_makanan_mobile/screens/detail.dart';
import 'package:stok_makanan_mobile/widgets/left_drawer.dart';
=======
import 'package:stok_makanan_mobile/widgets/left_drawer.dart';
import 'package:stok_makanan_mobile/screens/detail.dart';
>>>>>>> f2ac2ec83c46ccb5d7c466dce04f76101a804e7d

class ItemPage extends StatefulWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  _ItemPageState createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
<<<<<<< HEAD
  Future<List<Item>> fetchItem() async {
    // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
    var url = Uri.parse('https://ariana-nurlayla-tugas.pbp.cs.ui.ac.id./json/');
=======
  Future<List<Item>> fetchProduct() async {
    // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
    var url = Uri.parse('http://arianan-nurlayla-tugas.pbp.cs.ui.ac.id/json/');
>>>>>>> f2ac2ec83c46ccb5d7c466dce04f76101a804e7d
    var response = await http.get(
      url,
      headers: {"Content-Type": "application/json"},
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

<<<<<<< HEAD
    // melakukan konversi data json menjadi object Product
=======
    // melakukan konversi data json menjadi object Item
>>>>>>> f2ac2ec83c46ccb5d7c466dce04f76101a804e7d
    List<Item> list_item = [];
    for (var d in data) {
      if (d != null) {
        list_item.add(Item.fromJson(d));
      }
    }
    return list_item;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
<<<<<<< HEAD
          title: const Text('Items'),
        ),
        drawer: const LeftDrawer(),
        body: FutureBuilder(
            future: fetchItem(),
=======
          title: const Text('Koleksi'),
        ),
        drawer: const LeftDrawer(),
        body: FutureBuilder(
            future: fetchProduct(),
>>>>>>> f2ac2ec83c46ccb5d7c466dce04f76101a804e7d
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return const Column(
                    children: [
                      Text(
<<<<<<< HEAD
                        "Tidak ada data produk.",
=======
                        "Tidak ada data item.",
>>>>>>> f2ac2ec83c46ccb5d7c466dce04f76101a804e7d
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
<<<<<<< HEAD
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index) => Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            padding: const EdgeInsets.all(20.0),
                            child: InkWell(
                              onTap: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Detail(snapshot.data![index])))
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "${snapshot.data![index].fields.name}",
                                    style: const TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ));
=======
                    itemCount: snapshot.data!.length,
                    itemBuilder: (_, index) => ListTile(
                      title: Container(
                        color: const Color(0xFFF7C4A5),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 12),
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${snapshot.data![index].fields.name}",
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text("${snapshot.data![index].fields.amount}"),
                            const SizedBox(height: 10),
                            Text("${snapshot.data![index].fields.description}")
                          ],
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Detail(
                                      pk: snapshot.data![index].pk.toString(),
                                      name: snapshot.data![index].fields.name,
                                      amount: snapshot
                                          .data![index].fields.amount
                                          .toString(),
                                      description: snapshot
                                          .data![index].fields.description,
                                    )));
                      },
                    ),
                  );
>>>>>>> f2ac2ec83c46ccb5d7c466dce04f76101a804e7d
                }
              }
            }));
  }
}
