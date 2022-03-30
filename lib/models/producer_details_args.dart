import 'package:proj/models/producer_model.dart';

class ProducerDetailsArgs {
  final Producer producer;

  ProducerDetailsArgs({
    this.producer,
  });

  static ProducerDetailsArgs fromJson(Map<String, dynamic> json) {
    return ProducerDetailsArgs(
      producer: json['producer'],
    );
  }
}
