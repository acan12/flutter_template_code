import 'dart:convert';

import 'package:coconut/data/base_entity.dart';
import 'package:hive/hive.dart';

class BaseLocalEntityRepository {
  final String boxName;

  Future<void> createOrUpdate(BaseEntity data) async {
    await Hive.box<String>(boxName)
        .put(data.key, jsonEncode(data));
  }

  Future<void> deleteData(String id) async {
    Hive.box<String>(boxName).delete(id);
  }

  BaseLocalEntityRepository(this.boxName);
}