import 'package:flutter/material.dart';
import 'package:stok_makanan_mobile/widgets/left_drawer.dart';
import 'package:stok_makanan_mobile/screens/shoplist_form.dart';
import 'package:stok_makanan_mobile/widgets/shop_card.dart';
import 'package:stok_makanan_mobile/screens/list_item.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stok Makanan',
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
                  'Stok Makanan', // nama toko
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
        ),
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
