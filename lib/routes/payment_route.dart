import 'package:nuvigator/next.dart';
import 'package:flutter/material.dart';
import 'package:proj/screens/payment_screen.dart';

class PaymentRoute extends NuRoute {
  @override
  String get path => 'payment';

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return PaymentScreen();
  }
}
