import '/components/nav_bar12_widget.dart';
import '/components/top_menuestabelecimento_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'delivery_widget.dart' show DeliveryWidget;
import 'package:flutter/material.dart';

class DeliveryModel extends FlutterFlowModel<DeliveryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for topMenuestabelecimento component.
  late TopMenuestabelecimentoModel topMenuestabelecimentoModel;
  // State field(s) for search widget.
  FocusNode? searchFocusNode;
  TextEditingController? searchController;
  String? Function(BuildContext, String?)? searchControllerValidator;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for NavBar12 component.
  late NavBar12Model navBar12Model;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    topMenuestabelecimentoModel =
        createModel(context, () => TopMenuestabelecimentoModel());
    navBar12Model = createModel(context, () => NavBar12Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topMenuestabelecimentoModel.dispose();
    searchFocusNode?.dispose();
    searchController?.dispose();

    navBar12Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
