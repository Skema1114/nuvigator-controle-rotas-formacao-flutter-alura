import 'package:nuvigator/next.dart';
import 'package:flutter/material.dart';
import 'package:proj/models/package_details_args.dart';
import 'package:proj/screens/package_details_screen.dart';

class PackageDetailsRoute
    extends NuRoute<NuRouter, PackageDetailsArgs, String> {
  @override
  String get path => 'package-details';

  @override
  ScreenType get screenType => materialScreenType;

  @override
  ParamsParser<PackageDetailsArgs> get paramsParser =>
      PackageDetailsArgs.fromJson;

  @override
  Widget build(
      BuildContext context, NuRouteSettings<PackageDetailsArgs> settings) {
    // MAP<STRING, DYNAMIC> COM A LINHA DE ARGUMENTOS PASSADOS PARA A ROTA
    print(settings.rawParameters);

    // INSTÂNCIA DE PACKAGEDETAILARGS COM OS ARGUMENTOS PARSEADOS
    print(settings.arguments);

    print(settings.args);

    return PackageDetailsScreen(
      package: settings.args.package,
      producer: settings.args.producer,
    );
  }
}
