import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'carrinho_vazio_model.dart';
export 'carrinho_vazio_model.dart';

class CarrinhoVazioWidget extends StatefulWidget {
  const CarrinhoVazioWidget({super.key});

  @override
  _CarrinhoVazioWidgetState createState() => _CarrinhoVazioWidgetState();
}

class _CarrinhoVazioWidgetState extends State<CarrinhoVazioWidget> {
  late CarrinhoVazioModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CarrinhoVazioModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.fastfood_outlined,
          color: FlutterFlowTheme.of(context).primary,
          size: 90.0,
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Você ainda não tem ítens no carrinho :(',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Bebas Neue',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 19.0,
                    ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  'Navegue até a página de restaurantes para fazer seus pedidos.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodySmall,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
          child: FFButtonWidget(
            onPressed: () async {
              context.pushNamed('delivery');
            },
            text: 'Comprar',
            options: FFButtonOptions(
              padding: const EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 10.0),
              iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
              color: FlutterFlowTheme.of(context).primary,
              textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                    fontFamily: 'Lexend Deca',
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                  ),
              elevation: 2.0,
              borderSide: const BorderSide(
                color: Colors.transparent,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ],
    );
  }
}
