import 'package:nuvigator/next.dart';
import 'package:flutter/material.dart';
import 'package:proj/screens/profile_screen.dart';

class ProfileRoute extends NuRoute {
  @override
  String get path => 'profile';

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return ProfileScreen(
      onClose: () => nuvigator.pop(
          'Olá, eu sou um retorno de parâmetro! O nome retornado é: ${settings.rawParameters["name"]}'),
    );
  }
}
