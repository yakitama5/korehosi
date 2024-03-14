import 'package:uuid/uuid.dart';

const _uuid = Uuid();

String generatUuid() => _uuid.v8();
