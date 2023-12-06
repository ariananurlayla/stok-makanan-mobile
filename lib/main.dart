import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:stok_makanan_mobile/screens/menu.dart';
import 'package:stok_makanan_mobile/screens/login.dart';
=======
import 'package:melody_mementos/screens/menu.dart';
import 'package:melody_mementos/screens/login.dart';
>>>>>>> f2ac2ec83c46ccb5d7c466dce04f76101a804e7d
import 'package:provider/provider.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
<<<<<<< HEAD
          title: 'Stok Makanan',
=======
          title: 'Melody Mementos',
>>>>>>> f2ac2ec83c46ccb5d7c466dce04f76101a804e7d
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
            useMaterial3: true,
          ),
          home: LoginPage()),
    );
  }
}
