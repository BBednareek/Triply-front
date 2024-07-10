import 'package:flutter/material.dart';
import 'package:triply/core/constants/constants.dart';

class Paddings extends Constants {
  /// [All]

  static const all8 = EdgeInsets.all(8);
  static const all16 = EdgeInsets.all(16);

  /// [Horizontal]
  static const horizontal15 = EdgeInsets.symmetric(horizontal: 15.0);

  /// [Vertical]

  /// [Symmetric]
  static const vertical8horizontal40 =
      EdgeInsets.symmetric(vertical: 8, horizontal: 40);

  /// [Only]

  static const bottom26 = EdgeInsets.only(bottom: 26.0);
  static const bottom40 = EdgeInsets.only(bottom: 40.0);

  /// [Radius]

  /// [Circular]
  static BorderRadiusGeometry circular10 = BorderRadius.circular(10);
  static BorderRadiusGeometry circular80 = BorderRadius.circular(80);

  /// [Only]
  static BorderRadiusGeometry radiusLeftRight100 = const BorderRadius.only(
      bottomLeft: Radius.circular(180), bottomRight: Radius.circular(180));
}
