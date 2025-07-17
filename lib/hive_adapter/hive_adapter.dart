import 'package:hive/hive.dart';
import 'package:testing_project/database/database.dart';
part 'hive_adapter.g.dart';

@HiveType(typeId: 0)
class Selderey extends HiveObject {
  @HiveField(0)
  int? liters;
  @HiveField(1)
  String? image;
  @HiveField(2)
  String? name;
  @HiveField(3)
  int? price;
  @HiveField(4)
  int? count;
  @HiveField(5)
  int? id;
  @HiveField(6)
  bool isSaved;
  @HiveField(7)
  bool isBought;
  @HiveField(8)
  String? specialization;

  Selderey({
    this.specialization = '',
    this.isBought = false,
    this.liters = 0,
    this.isSaved = false,
    this.count = 0,
    this.id,
    this.image = '',
    this.name = '',
    this.price = 0,
  });
}

@HiveType(typeId: 1)
class SaveDB extends HiveObject {
  @HiveField(0)
  Selderey selderey;
  SaveDB({required this.selderey});
}

@HiveType(typeId: 2)
class HistoryDB extends HiveObject {
  @HiveField(0)
  String? name;
  @HiveField(1)
  String? phone;
  @HiveField(2)
  String? mail;
  @HiveField(3)
  String? comment;
  @HiveField(4)
  int? total;
  @HiveField(5)
  String? bouquetName;

  HistoryDB({
    this.name,
    this.phone,
    this.mail,
    this.comment,
    this.total,
    this.bouquetName,
  });
}
