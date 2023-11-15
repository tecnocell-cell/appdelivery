import '/components/nav_bar1_widget.dart';
import '/components/top_menuestabelecimento_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'restaurantes_widget.dart' show RestaurantesWidget;
import 'package:flutter/material.dart';

class RestaurantesModel extends FlutterFlowModel<RestaurantesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for topMenuestabelecimento component.
  late TopMenuestabelecimentoModel topMenuestabelecimentoModel;
  // State field(s) for search widget.
  FocusNode? searchFocusNode;
  TextEditingController? searchController;
  String? Function(BuildContext, String?)? searchControllerValidator;
  // Model for NavBar1 component.
  late NavBar1Model navBar1Model;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    topMenuestabelecimentoModel =
        createModel(context, () => TopMenuestabelecimentoModel());
    navBar1Model = createModel(context, () => NavBar1Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topMenuestabelecimentoModel.dispose();
    searchFocusNode?.dispose();
    searchController?.dispose();

    navBar1Model.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
