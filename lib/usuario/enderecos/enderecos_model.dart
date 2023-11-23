import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'enderecos_widget.dart' show EnderecosWidget;
import 'package:flutter/material.dart';

class EnderecosModel extends FlutterFlowModel<EnderecosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextCep widget.
  FocusNode? textCepFocusNode;
  TextEditingController? textCepController;
  String? Function(BuildContext, String?)? textCepControllerValidator;
  String? _textCepControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este Campo é Obrigatório';
    }

    return null;
  }

  // State field(s) for TextRua widget.
  FocusNode? textRuaFocusNode;
  TextEditingController? textRuaController;
  String? Function(BuildContext, String?)? textRuaControllerValidator;
  String? _textRuaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este Campo é Obrigatório';
    }

    if (val.length < 5) {
      return 'Requires at least 5 characters.';
    }

    return null;
  }

  // State field(s) for TextBairro widget.
  FocusNode? textBairroFocusNode;
  TextEditingController? textBairroController;
  String? Function(BuildContext, String?)? textBairroControllerValidator;
  String? _textBairroControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este Campo é Obrigatório';
    }

    if (val.length < 5) {
      return 'Requires at least 5 characters.';
    }

    return null;
  }

  // State field(s) for TextNumero widget.
  FocusNode? textNumeroFocusNode;
  TextEditingController? textNumeroController;
  String? Function(BuildContext, String?)? textNumeroControllerValidator;
  String? _textNumeroControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este Campo é Obrigatório';
    }

    if (val.isEmpty) {
      return 'Requires at least 1 characters.';
    }

    return null;
  }

  // State field(s) for TextComplemento widget.
  FocusNode? textComplementoFocusNode;
  TextEditingController? textComplementoController;
  String? Function(BuildContext, String?)? textComplementoControllerValidator;
  String? _textComplementoControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este Campo é Obrigatório';
    }

    if (val.length < 3) {
      return 'Requires at least 3 characters.';
    }

    return null;
  }

  // State field(s) for TextCidade widget.
  FocusNode? textCidadeFocusNode;
  TextEditingController? textCidadeController;
  String? Function(BuildContext, String?)? textCidadeControllerValidator;
  String? _textCidadeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este Campo é Obrigatório';
    }

    if (val.length < 5) {
      return 'Requires at least 5 characters.';
    }

    return null;
  }

  // State field(s) for TextEstado widget.
  FocusNode? textEstadoFocusNode;
  TextEditingController? textEstadoController;
  String? Function(BuildContext, String?)? textEstadoControllerValidator;
  String? _textEstadoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este Campo é Obrigatório';
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }

    return null;
  }

  // State field(s) for TextIdentificador widget.
  FocusNode? textIdentificadorFocusNode;
  TextEditingController? textIdentificadorController;
  String? Function(BuildContext, String?)? textIdentificadorControllerValidator;
  String? _textIdentificadorControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este Campo é Obrigatório';
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Create Document] action in Container widget.
  EnderecoRecord? enderecoUsuario;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    textCepControllerValidator = _textCepControllerValidator;
    textRuaControllerValidator = _textRuaControllerValidator;
    textBairroControllerValidator = _textBairroControllerValidator;
    textNumeroControllerValidator = _textNumeroControllerValidator;
    textComplementoControllerValidator = _textComplementoControllerValidator;
    textCidadeControllerValidator = _textCidadeControllerValidator;
    textEstadoControllerValidator = _textEstadoControllerValidator;
    textIdentificadorControllerValidator =
        _textIdentificadorControllerValidator;
  }

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
