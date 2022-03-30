import 'package:nuvigator/next.dart';
import 'package:flutter/material.dart';
import 'package:proj/models/producer_details_args.dart';
import 'package:proj/screens/producer_details_screen.dart';

class ProducerDetailsRoute
    extends NuRoute<NuRouter, ProducerDetailsArgs, String> {
  @override
  String get path => 'producer-details';

  @override
  ScreenType get screenType => materialScreenType;

  @override
  ParamsParser<ProducerDetailsArgs> get paramsParser =>
      ProducerDetailsArgs.fromJson;

  @override
  Widget build(
      BuildContext context, NuRouteSettings<ProducerDetailsArgs> settings) {
    return ProducerDetailsScreen(
      onPackageDetailsClick: (parameters) =>
          nuvigator.open('package-details', parameters: parameters),
      producer: settings.args.producer,
    );
  }
}
