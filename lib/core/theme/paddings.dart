import 'package:flutter/material.dart';
import 'package:triply/core/constants/constants.dart';
import 'package:triply/core/theme/colors.dart';

class Paddings extends Constants {
  /// [All]

  static const all16 = EdgeInsets.all(16);

  /// [Horizontal]
  static const horizontal15 = EdgeInsets.symmetric(horizontal: 15.0);

  /// [Vertical]

  /// [Symmetric]
  static const vertical8horizontal40 =
      EdgeInsets.symmetric(vertical: 8, horizontal: 40);

  /// [Only]
  ///       [Top]
  ///
  ///       [Left]
  ///
  ///       [Right]
  ///
  ///       [Bottom]
  static const bottom26 = EdgeInsets.only(bottom: 26.0);
  static const bottom40 = EdgeInsets.only(bottom: 40.0);

  /// [Radius]

  /// [Circular]
  static BorderRadiusGeometry circular80 = BorderRadius.circular(80);

  /// [Only]
  static BorderRadiusGeometry radiusLeftRight100 = const BorderRadius.only(
      bottomLeft: Radius.circular(100), bottomRight: Radius.circular(100));

  /// [Custom]
  static BoxDecoration greyRadiusLeftRight100 = BoxDecoration(
    color: ThemeColors.lightGrey,
    borderRadius: radiusLeftRight100,
  );

  static const BorderSide greenBorder =
      BorderSide(color: ThemeColors.baseGreen);
}