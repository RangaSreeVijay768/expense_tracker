import 'package:flutter/cupertino.dart';


abstract class shadows {
  static const bs_primary = BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.25),
    offset: Offset(
      0.0,
      4.0,
    ),
    blurRadius: 25.0,
    spreadRadius: 0.0,
  );
  static const bs_grey = BoxShadow(
    color: Color.fromRGBO(0, 0, 0, 0.12),
    offset: Offset(
      2.0,
      2.0,
    ),
    blurRadius: 22.0,
    spreadRadius: 0.0,
  );



}
