import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'pagamento_widget.dart' show PagamentoWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PagamentoModel extends FlutterFlowModel<PagamentoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey4 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  // State field(s) for Timer widget.
  int timerMilliseconds = 300000;
  String timerValue = StopWatchTimer.getDisplayTime(
    300000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeController;
  String? Function(BuildContext, String?)? nomeControllerValidator;
  String? _nomeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    return null;
  }

  // State field(s) for card widget.
  FocusNode? cardFocusNode;
  TextEditingController? cardController;
  final cardMask = MaskTextInputFormatter(mask: '#### #### #### ####');
  String? Function(BuildContext, String?)? cardControllerValidator;
  String? _cardControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    return null;
  }

  // State field(s) for expData widget.
  FocusNode? expDataFocusNode;
  TextEditingController? expDataController;
  final expDataMask = MaskTextInputFormatter(mask: '##/##');
  String? Function(BuildContext, String?)? expDataControllerValidator;
  String? _expDataControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    return null;
  }

  // State field(s) for codSeg widget.
  FocusNode? codSegFocusNode;
  TextEditingController? codSegController;
  final codSegMask = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? codSegControllerValidator;
  String? _codSegControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Obrigatório';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    nomeControllerValidator = _nomeControllerValidator;
    cardControllerValidator = _cardControllerValidator;
    expDataControllerValidator = _expDataControllerValidator;
    codSegControllerValidator = _codSegControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    timerController.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    nomeFocusNode?.dispose();
    nomeController?.dispose();

    cardFocusNode?.dispose();
    cardController?.dispose();

    expDataFocusNode?.dispose();
    expDataController?.dispose();

    codSegFocusNode?.dispose();
    codSegController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
