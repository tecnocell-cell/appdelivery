import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'pizza_dois_sabores_widget.dart' show PizzaDoisSaboresWidget;
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class PizzaDoisSaboresModel extends FlutterFlowModel<PizzaDoisSaboresWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  AudioPlayer? soundPlayer1;
  AudioPlayer? soundPlayer2;
  // State field(s) for Addons widget.
  List<String>? addonsValues;
  FormFieldController<List<String>>? addonsValueController;
  AudioPlayer? soundPlayer3;
  // State field(s) for SizeSilder widget.
  double? sizeSilderValue;
  AudioPlayer? soundPlayer4;
  AudioPlayer? soundPlayer5;
  AudioPlayer? soundPlayer6;
  AudioPlayer? soundPlayer7;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
