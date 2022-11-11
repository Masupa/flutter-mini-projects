import 'package:flutter/material.dart';
import 'package:cashback_app/pages/item.dart';
import 'package:cashback_app/pages/stores.dart';
import 'package:cashback_app/pages/home.dart';
import 'package:cashback_app/pages/cart.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const CashbackApp());
}

class CashbackApp extends StatelessWidget {
  const CashbackApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const HomePage(),
        "/store_page": (context) => const StoresPage(),
        "/item_page": (context) => const ItemPage(),
        "/cart_page": (context) => const CartPage(),
      },
      theme: ThemeData(
        textTheme: GoogleFonts.openSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
    );
  }
}
