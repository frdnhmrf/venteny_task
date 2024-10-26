import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final String? messages;
  const Failure({this.messages});

  @override
  List<Object?> get props => messages == null ? [] : [messages];

  @override
  String toString() => messages ?? '';
}
