import 'package:flutter/material.dart';
import 'package:stok_makanan_mobile/models/item.dart';
import 'package:stok_makanan_mobile/widgets/left_drawer.dart';

class Detail extends StatelessWidget {
  final Item item;

  const Detail(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Obat',
        ),
      ),
      drawer: const LeftDrawer(),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text("Amount ${item.fields.amount}"),
            const SizedBox(height: 20),
            Text("Description: ${item.fields.description}"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
