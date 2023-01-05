// ignore_for_file: avoid_classes_with_only_static_members, cast_nullable_to_non_nullable

import 'package:rive/rive.dart';

class RiveUtils {
  static SMIBool getRiveInput(Artboard artboard,
      {required String stateMachineName}) {
    final controller =
        StateMachineController.fromArtboard(artboard, stateMachineName);

    artboard.addController(controller!);

    return controller.findInput<bool>('active') as SMIBool;
  }

  static void chnageSMIBoolState(SMIBool input) {
    input.change(true);
    Future.delayed(
      const Duration(seconds: 1),
      () {
        input.change(false);
      },
    );
  }
}
