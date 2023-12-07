import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'carrinho_widget.dart' show CarrinhoWidget;
import 'package:flutter/material.dart';

class CarrinhoModel extends FlutterFlowModel<CarrinhoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextFieldCUPOM widget.
  FocusNode? textFieldCUPOMFocusNode;
  TextEditingController? textFieldCUPOMController;
  String? Function(BuildContext, String?)? textFieldCUPOMControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  CuponsRecord? cupomaction;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldCUPOMFocusNode?.dispose();
    textFieldCUPOMController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
