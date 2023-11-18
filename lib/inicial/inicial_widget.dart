import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'inicial_model.dart';
export 'inicial_model.dart';

class InicialWidget extends StatefulWidget {
  const InicialWidget({super.key});

  @override
  _InicialWidgetState createState() => _InicialWidgetState();
}

class _InicialWidgetState extends State<InicialWidget>
    with TickerProviderStateMixin {
  late InicialModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'blurOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ShakeEffect(
          curve: Curves.easeInOut,
          delay: 80.ms,
          duration: 1000.ms,
          hz: 5,
          offset: const Offset(0.0, 0.0),
          rotation: 0.105,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 80.ms,
          duration: 1000.ms,
          begin: const Offset(0.0, 0.0),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
    'blurOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ShakeEffect(
          curve: Curves.easeInOut,
          delay: 80.ms,
          duration: 1000.ms,
          hz: 5,
          offset: const Offset(0.0, 0.0),
          rotation: 0.105,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 80.ms,
          duration: 1000.ms,
          begin: const Offset(0.0, 0.0),
          end: const Offset(1.0, 1.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InicialModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            alignment: const AlignmentDirectional(0.0, -1.0),
            children: [
              ClipRect(
                child: ImageFiltered(
                  imageFilter: ImageFilter.blur(
                    sigmaX: 2.0,
                    sigmaY: 2.0,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/pranjall-kumar-sejqj6Eaqe8-unsplash.jpg',
                        ).image,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 145.0, 0.0, 0.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 2.0,
                      sigmaY: 2.0,
                    ),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 20.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Container(
                        width: 300.0,
                        height: 140.0,
                        decoration: BoxDecoration(
                          color: const Color(0xA6000000),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'FOME DE QUE',
                              style: GoogleFonts.getFont(
                                'Roboto Mono',
                                color: Colors.white,
                                fontSize: 30.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ).animateOnPageLoad(animationsMap['blurOnPageLoadAnimation1']!),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 400.0, 100.0, 0.0),
                child: Container(
                  width: 300.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primary,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(30.0),
                      topLeft: Radius.circular(0.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(30.0, 0.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Falta Pouco!',
                              textAlign: TextAlign.start,
                              style: GoogleFonts.getFont(
                                'Roboto Mono',
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                fontSize: 30.0,
                              ),
                            ),
                            Text(
                              'Para Matar Sua Fome.',
                              textAlign: TextAlign.start,
                              style: GoogleFonts.getFont(
                                'Roboto Mono',
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.00, 1.00),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 2.0,
                      sigmaY: 2.0,
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 150.0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 20.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Container(
                          width: 300.0,
                          height: 80.0,
                          decoration: BoxDecoration(
                            color: const Color(0xA59B1814),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 10.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('login');
                                  },
                                  child: Text(
                                    'Registrar',
                                    style: GoogleFonts.getFont(
                                      'Roboto Mono',
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 30.0,
                                child: VerticalDivider(
                                  thickness: 2.0,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed('delivery');
                                  },
                                  child: Text(
                                    'Continuar',
                                    style: GoogleFonts.getFont(
                                      'Roboto Mono',
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ).animateOnPageLoad(animationsMap['blurOnPageLoadAnimation2']!),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
