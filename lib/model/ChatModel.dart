import 'package:hive/hive.dart';
part 'ChatModel.g.dart';

@HiveType(typeId: 0)
class ChatModel extends HiveObject {
  @HiveField(0)
  String message;
  @HiveField(1)
  int mode; // 1 or 2 => 1 for user and 2 for assistant
  ChatModel({required this.message, required this.mode});
}
