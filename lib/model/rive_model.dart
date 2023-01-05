import 'package:rive/rive.dart';

class RiveModel {

  RiveModel({
    required this.src,
    required this.artboard,
    required this.stateMachineName,
    this.status,
  });
  final String src;
  final String artboard;
  final String stateMachineName;
  late SMIBool? status;

  set setStatus(SMIBool state) {
    status = state;
  }
}
