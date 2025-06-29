import 'dart:ui';

import 'package:flutter_tex/flutter_tex.dart';

String teXViewDefaultStyle = "overflow: hidden; position: relative; ";

String getColor(Color? color) {
  // Properti r, g, b, a diganti dengan red, green, blue, opacity
  return "rgba(${(color?.red ?? 0)}, ${(color?.green ?? 0)}, ${(color?.blue ?? 0)}, ${(color?.opacity ?? 1.0)})";
}

String getElevation(int? elevation, TeXViewSizeUnit? sizeUnit) {
  return "0 ${(elevation ?? 0) * 1}${UnitHelper.getValue(sizeUnit)} ${(elevation ?? 0) * 2}${UnitHelper.getValue(sizeUnit)} 0 rgba(0,0,0,0.2)";
}

String getSizeWithUnit(int? value, TeXViewSizeUnit? sizeUnit) {
  return (value ?? 0).toString() + UnitHelper.getValue(sizeUnit);
}
