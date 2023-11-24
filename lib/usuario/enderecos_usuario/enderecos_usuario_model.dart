import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'enderecos_usuario_widget.dart' show EnderecosUsuarioWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class EnderecosUsuarioModel extends FlutterFlowModel<EnderecosUsuarioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextCep widget.
  FocusNode? textCepFocusNode;
  TextEditingController? textCepController;
  final textCepMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? textCepControllerValidator;
  // Stores action output result for [Backend Call - API (buscaCEP)] action in Buscar widget.
  ApiCallResponse? buscaresultado;
  // State field(s) for TextRua widget.
  FocusNode? textRuaFocusNode;
  TextEditingController? textRuaController;
  String? Function(BuildContext, String?)? textRuaControllerValidator;
  // State field(s) for TextBairro widget.
  FocusNode? textBairroFocusNode;
  TextEditingController? textBairroController;
  String? Function(BuildContext, String?)? textBairroControllerValidator;
  // State field(s) for TextNumero widget.
  FocusNode? textNumeroFocusNode;
  TextEditingController? textNumeroController;
  String? Function(BuildContext, String?)? textNumeroControllerValidator;
  // State field(s) for TextComplemento widget.
  FocusNode? textComplementoFocusNode;
  TextEditingController? textComplementoController;
  String? Function(BuildContext, String?)? textComplementoControllerValidator;
  // State field(s) for TextCidade widget.
  FocusNode? textCidadeFocusNode;
  TextEditingController? textCidadeController;
  String? Function(BuildContext, String?)? textCidadeControllerValidator;
  // State field(s) for TextEstado widget.
  FocusNode? textEstadoFocusNode;
  TextEditingController? textEstadoController;
  String? Function(BuildContext, String?)? textEstadoControllerValidator;
  // State field(s) for TextIdentificador widget.
  FocusNode? textIdentificadorFocusNode;
  TextEditingController? textIdentificadorController;
  String? Function(BuildContext, String?)? textIdentificadorControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textCepFocusNode?.dispose();
    textCepController?.dispose();

    textRuaFocusNode?.dispose();
    textRuaController?.dispose();

    textBairroFocusNode?.dispose();
    textBairroController?.dispose();

    textNumeroFocusNode?.dispose();
    textNumeroController?.dispose();

    textComplementoFocusNode?.dispose();
    textComplementoController?.dispose();

    textCidadeFocusNode?.dispose();
    textCidadeController?.dispose();

    textEstadoFocusNode?.dispose();
    textEstadoController?.dispose();

    textIdentificadorFocusNode?.dispose();
    textIdentificadorController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
