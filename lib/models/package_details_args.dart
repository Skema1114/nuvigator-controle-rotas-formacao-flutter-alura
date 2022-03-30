import 'package:proj/models/package_model.dart';
import 'package:proj/models/producer_model.dart';

class PackageDetailsArgs {
  final Producer producer;
  final Package package;

  PackageDetailsArgs({
    this.producer,
    this.package,
  });

  static PackageDetailsArgs fromJson(Map<String, dynamic> json) {
    return PackageDetailsArgs(
      producer: json['producer'],
      package: json['package'],
    );
  }
}
