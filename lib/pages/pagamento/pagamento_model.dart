import '/flutter_flow/flutter_flow_util.dart';
import 'pagamento_widget.dart' show PagamentoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PagamentoModel extends FlutterFlowModel<PagamentoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey8 = GlobalKey<FormState>();
  final formKey7 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey6 = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeController;
  String? Function(BuildContext, String?)? nomeControllerValidator;
  // State field(s) for cpf widget.
  FocusNode? cpfFocusNode;
  TextEditingController? cpfController;
  String? Function(BuildContext, String?)? cpfControllerValidator;
  // State field(s) for number_cartao widget.
  FocusNode? numberCartaoFocusNode;
  TextEditingController? numberCartaoController;
  String? Function(BuildContext, String?)? numberCartaoControllerValidator;
  // State field(s) for mes_card widget.
  FocusNode? mesCardFocusNode;
  TextEditingController? mesCardController;
  final mesCardMask = MaskTextInputFormatter(mask: '##');
  String? Function(BuildContext, String?)? mesCardControllerValidator;
  // State field(s) for ano_card widget.
  FocusNode? anoCardFocusNode;
  TextEditingController? anoCardController;
  final anoCardMask = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? anoCardControllerValidator;
  // State field(s) for cvv_card widget.
  FocusNode? cvvCardFocusNode;
  TextEditingController? cvvCardController;
  final cvvCardMask = MaskTextInputFormatter(mask: '###');
  String? Function(BuildContext, String?)? cvvCardControllerValidator;
  // State field(s) for dd widget.
  FocusNode? ddFocusNode;
  TextEditingController? ddController;
  String? Function(BuildContext, String?)? ddControllerValidator;
  // State field(s) for celular widget.
  FocusNode? celularFocusNode;
  TextEditingController? celularController;
  String? Function(BuildContext, String?)? celularControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    nomeFocusNode?.dispose();
    nomeController?.dispose();

    cpfFocusNode?.dispose();
    cpfController?.dispose();

    numberCartaoFocusNode?.dispose();
    numberCartaoController?.dispose();

    mesCardFocusNode?.dispose();
    mesCardController?.dispose();

    anoCardFocusNode?.dispose();
    anoCardController?.dispose();

    cvvCardFocusNode?.dispose();
    cvvCardController?.dispose();

    ddFocusNode?.dispose();
    ddController?.dispose();

    celularFocusNode?.dispose();
    celularController?.dispose();

    textFieldFocusNode2?.dispose();
    textController10?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
