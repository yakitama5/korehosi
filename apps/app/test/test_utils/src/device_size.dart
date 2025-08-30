import 'package:flutter/rendering.dart';

enum DeviceSize {
  iPhone16,
  iPadPro11,
}

extension DeviceSizeX on DeviceSize {
  BoxConstraints get constraints => switch (this) {
        DeviceSize.iPhone16 => BoxConstraints.tight(const Size(393, 852)),
        DeviceSize.iPadPro11 => BoxConstraints.tight(const Size(834, 1210)),
      };
}
