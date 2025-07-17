import 'package:hive/hive.dart';
import 'package:testing_project/client/hive_names.dart';
import 'package:testing_project/database/product.dart';
import 'package:testing_project/hive_adapter/hive_adapter.dart';

var box = Hive.box<Selderey>(HiveBoxes.dataBase);
var saveBox = Hive.box<SaveDB>(HiveBoxes.saveDataBase);
var historyBox = Hive.box<HistoryDB>(HiveBoxes.historyDataBase);
final product = [
  Product(
    id: 0,
    name: '          \n ПРАЖСКИЙ  ГИГАНТ',
    image: 'assets/images/image_3.png',
    price: 349,
  ),
];
void addProducts() {
  for (var i = 0; i < product.length; i++) {
    box.add(
      Selderey(
        id: product[i].id,
        image: product[i].image,
        name: product[i].name,
        price: product[i].price,
        isSaved: product[i].isSaved,
        count: product[i].count,
        isBought: product[i].isBought,
      ),
    );
  }
}
