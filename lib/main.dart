import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:testing_project/client/hive_names.dart';
import 'package:testing_project/database/database.dart';
import 'package:testing_project/database/product.dart';
import 'package:testing_project/hive_adapter/hive_adapter.dart';
import 'package:testing_project/screens/catalog.dart';
import 'package:testing_project/screens/view/basket.dart';
import 'package:testing_project/screens/view/categories.dart';
import 'package:testing_project/screens/view/delivery.dart';
import 'package:testing_project/screens/view/details.dart';
import 'package:testing_project/screens/on_boarding_screen.dart';
import 'package:testing_project/screens/view/pickup.dart';
import 'package:testing_project/screens/view/succesfull.dart';

int? initScreen;
void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(SeldereyAdapter());
  await Hive.openBox<Selderey>(HiveBoxes.dataBase);
  if (box.isEmpty) addProducts();
  print('${box.values}');
  Hive.registerAdapter(HistoryDBAdapter());
  await Hive.openBox('historyDB');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<Product> product = [];
    return MaterialApp(
      color: Colors.white,
      theme: ThemeData.light(),
      routes: {
        '/catalog': (context) => Catalog(),
        '/onboarding': (context) => OnBoardingScreen(),
        '/details': (context) => Details(),
        '/delivery': (context) => Delivery(),
        '/basket': (context) => Basket(product: product),
        '/pickup': (context) => Pickup(),
        '/categories': (context) => Categories(),
        '/succesfull': (context) => Succesfull(),
      },
      initialRoute: initScreen == 0 || initScreen == null
          ? '/catalog'
          : '/onboarding',
    );
  }
}
