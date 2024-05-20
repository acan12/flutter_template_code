import 'package:flutter_template_code/features/data/local/entities/base_entity.dart';
import 'package:hive/hive.dart';

part 'user_entity.g.dart';

@HiveType(typeId: 0)
class UserEntity implements BaseEntity {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String fullName;
  @HiveField(2)
  final String email;
  @HiveField(3)
  final int age;

  UserEntity(this.id, this.fullName, this.email, this.age);

  @override
  String get key => id.toString();
}
