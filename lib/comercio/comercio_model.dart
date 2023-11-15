import '/components/nav_bar12_widget.dart';
import '/components/top_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'comercio_widget.dart' show ComercioWidget;
import 'package:flutter/material.dart';

class ComercioModel extends FlutterFlowModel<ComercioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for topMenu component.
  late TopMenuModel topMenuModel;
  // State field(s) for search widget.
  FocusNode? searchFocusNode;
  TextEditingController? searchController;
  String? Function(BuildContext, String?)? searchControllerValidator;
  // Model for NavBar12 component.
  late NavBar12Model navBar12Model;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    topMenuModel = createModel(context, () => TopMenuModel());
    navBar12Model = createModel(context, () => NavBar12Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topMenuModel.dispose();
    searchFocusNode?.dispose();
    searchController?.dispose();

    navBar12Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
