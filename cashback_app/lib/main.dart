import 'package:cashback_app/models/price_model.dart';
import 'package:cashback_app/models/store_model.dart';
import 'package:flutter/material.dart';
import 'package:cashback_app/pages/item.dart';
import 'package:cashback_app/pages/stores.dart';
import 'package:cashback_app/pages/home.dart';
import 'package:cashback_app/pages/cart.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<PriceModel>(create: (context) => PriceModel()),
        ListenableProvider<StoreModel>(create: (context) => StoreModel())
      ],
      child: const CashbackApp(),
    ),
  );
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
        "/store_page": (context) => ChangeNotifierProvider(
              create: ((context) => TagsModel()),
              child: const StoresPage(),
            ),
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
