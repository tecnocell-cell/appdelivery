import '/componentes/seleciona_end_entrega/seleciona_end_entrega_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'endereco_entrega_widget.dart' show EnderecoEntregaWidget;
import 'package:flutter/material.dart';

class EnderecoEntregaModel extends FlutterFlowModel<EnderecoEntregaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for selecionaEndEntrega component.
  late SelecionaEndEntregaModel selecionaEndEntregaModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    selecionaEndEntregaModel =
        createModel(context, () => SelecionaEndEntregaModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    selecionaEndEntregaModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
