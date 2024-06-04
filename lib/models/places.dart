import 'package:uuid/uuid.dart';

const uuid = Uuid();

class Places {
  Places({required this.title}) : id = uuid.v4();
  final String id;
  final String title;
}
