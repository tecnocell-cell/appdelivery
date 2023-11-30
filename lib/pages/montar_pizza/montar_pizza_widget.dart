import '/backend/backend.dart';
import '/componentes/add_to_cart/add_to_cart_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:just_audio/just_audio.dart';
import 'package:provider/provider.dart';
import 'montar_pizza_model.dart';
export 'montar_pizza_model.dart';

class MontarPizzaWidget extends StatefulWidget {
  const MontarPizzaWidget({
    super.key,
    this.pizzaindex,
  });

  final int? pizzaindex;

  @override
  _MontarPizzaWidgetState createState() => _MontarPizzaWidgetState();
}

class _MontarPizzaWidgetState extends State<MontarPizzaWidget>
    with TickerProviderStateMixin {
  late MontarPizzaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'imageOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: const Offset(-100.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'imageOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 200.ms,
          begin: const Offset(100.0, 0.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'iconOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, -100.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, -100.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 50.ms),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 50.ms,
          duration: 600.ms,
          begin: const Offset(0.0, -100.0),
          end: const Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 130.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'iconOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 180.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: const Offset(0.0, -100.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        VisibilityEffect(duration: 180.ms),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 180.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: const Offset(0.0, -100.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(1.5, 1.5),
          end: const Offset(1.0, 1.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'iconOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 100.0),
          end: const Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 130.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 100.0),
          end: const Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 130.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'checkboxGroupOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 150.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 100.0),
          end: const Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 100.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'iconOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 130.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 100.0),
          end: const Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 270.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 130.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 100.0),
          end: const Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 270.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation7': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 130.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 100.0),
          end: const Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 270.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'sliderOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 100.0),
          end: const Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 130.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      applyInitialState: true,
      effects: [
        RotateEffect(
          curve: Curves.easeOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 0.3,
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 700.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0.0, 40.0),
          end: const Offset(0.0, 0.0),
        ),
      ],
    ),
    'imageOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(1.0, 1.0),
          end: const Offset(1.1, 1.1),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MontarPizzaModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().update(() {
        FFAppState().addFavorito = false;
      });
    });

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

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
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(60.0, 50.0, 60.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    tablet: false,
                    tabletLandscape: false,
                  ))
                    Align(
                      alignment: const AlignmentDirectional(-1.00, 0.00),
                      child: Icon(
                        Icons.person_4,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 24.0,
                      ),
                    ),
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(0.00, 0.00),
                      child: Image.asset(
                        'assets/images/Logo.png',
                        width: 70.0,
                        height: 44.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40.0,
                    height: 40.0,
                    child: Stack(
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.00, 0.00),
                          child: Icon(
                            Icons.shopping_cart_outlined,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 22.0,
                          ),
                        ),
                        if (FFAppState().addToCarrinho == true)
                          Align(
                            alignment: const AlignmentDirectional(1.00, -1.00),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  4.0, 0.0, 0.0, 8.0),
                              child: badges.Badge(
                                badgeContent: Text(
                                  '1',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Open Sans',
                                        color: Colors.white,
                                        fontSize: 10.0,
                                      ),
                                ),
                                showBadge: true,
                                shape: badges.BadgeShape.circle,
                                badgeColor:
                                    FlutterFlowTheme.of(context).primary,
                                elevation: 0.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    6.0, 6.0, 6.0, 6.0),
                                position: badges.BadgePosition.topEnd(),
                                animationType: badges.BadgeAnimationType.scale,
                                toAnimate: true,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.00, 0.00),
                    child: Container(
                      width: 400.0,
                      height: 210.0,
                      decoration: const BoxDecoration(
                        color: Color(0x00F0F0F2),
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0.00, 0.00),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (FFAppState().PizzaIndex != 0)
                              Expanded(
                                child: Align(
                                  alignment: const AlignmentDirectional(-1.00, 0.00),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      HapticFeedback.selectionClick();
                                      // Click Sound
                                      _model.soundPlayer1 ??= AudioPlayer();
                                      if (_model.soundPlayer1!.playing) {
                                        await _model.soundPlayer1!.stop();
                                      }
                                      _model.soundPlayer1!.setVolume(1.0);
                                      _model.soundPlayer1!
                                          .setAsset(
                                              'assets/audios/zapsplat_multimedia_click_001_19367.mp3')
                                          .then((_) =>
                                              _model.soundPlayer1!.play());

                                      if (FFAppState().PizzaIndex > 0) {
                                        // Previous Food Index
                                        FFAppState().update(() {
                                          FFAppState().PizzaIndex =
                                              FFAppState().PizzaIndex + -1;
                                        });
                                        // Hide back to Options
                                        FFAppState().update(() {
                                          FFAppState().OptionSedid = false;
                                        });
                                        // Previous Food

                                        context.pushNamed(
                                          'montarPizza',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 400),
                                            ),
                                          },
                                        );
                                      } else {
                                        return;
                                      }
                                    },
                                    child: Image.asset(
                                      'assets/images/ARROWLEFT.png',
                                      width: 50.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'imageOnPageLoadAnimation1']!),
                                ),
                              ),
                            if (FFAppState().PizzaIndex < 2)
                              Expanded(
                                child: Align(
                                  alignment: const AlignmentDirectional(1.00, 0.00),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      HapticFeedback.selectionClick();
                                      // Click Sound
                                      _model.soundPlayer2 ??= AudioPlayer();
                                      if (_model.soundPlayer2!.playing) {
                                        await _model.soundPlayer2!.stop();
                                      }
                                      _model.soundPlayer2!.setVolume(1.0);
                                      _model.soundPlayer2!
                                          .setAsset(
                                              'assets/audios/zapsplat_multimedia_click_001_19367.mp3')
                                          .then((_) =>
                                              _model.soundPlayer2!.play());

                                      if (FFAppState().PizzaIndex < 2) {
                                        // Set the Next Food Index
                                        FFAppState().update(() {
                                          FFAppState().PizzaIndex =
                                              FFAppState().PizzaIndex + 1;
                                        });
                                        // Hide Options panel
                                        FFAppState().update(() {
                                          FFAppState().OptionSedid = true;
                                        });
                                        // Navigate to Previous Food

                                        context.pushNamed(
                                          'montarPizza',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: const TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 400),
                                            ),
                                          },
                                        );
                                      } else {
                                        return;
                                      }
                                    },
                                    child: Image.asset(
                                      'assets/images/ARROWRIGHT.png',
                                      width: 50.0,
                                      height: 200.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'imageOnPageLoadAnimation2']!),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.00, 1.00),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 100.0),
                      child: Container(
                        width: 280.0,
                        height: 548.0,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              const Color(0x00F0F0F2),
                              const Color(0xD5F0F0F2),
                              FlutterFlowTheme.of(context).secondaryBackground
                            ],
                            stops: const [0.0, 0.5, 1.0],
                            begin: const AlignmentDirectional(0.0, -1.0),
                            end: const AlignmentDirectional(0, 1.0),
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Align(
                          alignment: const AlignmentDirectional(0.00, 1.00),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              if (FFAppState().OptionSedid == false)
                                Align(
                                  alignment: const AlignmentDirectional(0.00, 1.00),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 110.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 2.0, 0.0),
                                              child: Icon(
                                                FFIcons.knotification5,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 13.0,
                                              ).animateOnPageLoad(animationsMap[
                                                  'iconOnPageLoadAnimation1']!),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.00, 0.00),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 2.0, 0.0, 0.0),
                                                child: SelectionArea(
                                                    child: Text(
                                                  'Pizza',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                )).animateOnPageLoad(animationsMap[
                                                    'textOnPageLoadAnimation1']!),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.00, 0.00),
                                          child: StreamBuilder<
                                              List<ProdutosRecord>>(
                                            stream: queryProdutosRecord(
                                              queryBuilder: (produtosRecord) =>
                                                  produtosRecord.where(
                                                'categori',
                                                arrayContains: _model
                                                    .sizeSilderValue
                                                    ?.toString(),
                                              ),
                                              singleRecord: true,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<ProdutosRecord>
                                                  titleProdutosRecordList =
                                                  snapshot.data!;
                                              // Return an empty Container when the item does not exist.
                                              if (snapshot.data!.isEmpty) {
                                                return Container();
                                              }
                                              final titleProdutosRecord =
                                                  titleProdutosRecordList
                                                          .isNotEmpty
                                                      ? titleProdutosRecordList
                                                          .first
                                                      : null;
                                              return SelectionArea(
                                                  child: Text(
                                                valueOrDefault<String>(
                                                  titleProdutosRecord?.nome,
                                                  'Pizza',
                                                ),
                                                textAlign: TextAlign.center,
                                                maxLines: 2,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Open Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 32.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                              )).animateOnPageLoad(animationsMap[
                                                  'textOnPageLoadAnimation2']!);
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 20.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 2.0, 0.0),
                                                child: Icon(
                                                  FFIcons.kaddCategory,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 13.0,
                                                ).animateOnPageLoad(animationsMap[
                                                    'iconOnPageLoadAnimation2']!),
                                              ),
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    0.00, 0.00),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 2.0, 0.0, 0.0),
                                                  child: SelectionArea(
                                                      child: Text(
                                                    'Pizza sauce, mozzarella,',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 10.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  )).animateOnPageLoad(
                                                      animationsMap[
                                                          'textOnPageLoadAnimation3']!),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.00, 0.00),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 30.0, 0.0, 0.0),
                                            child: SelectionArea(
                                                child: Text(
                                              '\$8.99',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Open Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 60.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            )).animateOnPageLoad(animationsMap[
                                                'textOnPageLoadAnimation4']!),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              if (FFAppState().OptionSedid == true)
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 110.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 1.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 5.0, 3.0),
                                              child: Icon(
                                                FFIcons.kkeyboard,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 16.0,
                                              ).animateOnPageLoad(animationsMap[
                                                  'iconOnPageLoadAnimation3']!),
                                            ),
                                            SelectionArea(
                                                child: Text(
                                              'Addons',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            )).animateOnPageLoad(animationsMap[
                                                'textOnPageLoadAnimation5']!),
                                          ],
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.00, 0.00),
                                        child: Container(
                                          width: 260.0,
                                          height: 120.0,
                                          decoration: const BoxDecoration(
                                            color: Color(0x00F0F0F2),
                                          ),
                                          child: Align(
                                            alignment: const AlignmentDirectional(
                                                0.00, 0.00),
                                            child: FlutterFlowCheckboxGroup(
                                              options: const [
                                                'BBQ with Chili',
                                                'Ketchup',
                                                '+HAM'
                                              ],
                                              onChanged: (val) async {
                                                setState(() =>
                                                    _model.addonsValues = val);
                                                HapticFeedback.selectionClick();
                                                _model.soundPlayer3 ??=
                                                    AudioPlayer();
                                                if (_model
                                                    .soundPlayer3!.playing) {
                                                  await _model.soundPlayer3!
                                                      .stop();
                                                }
                                                _model.soundPlayer3!
                                                    .setVolume(1.0);
                                                _model.soundPlayer3!
                                                    .setAsset(
                                                        'assets/audios/zapsplat_multimedia_button_click_002_78079.mp3')
                                                    .then((_) => _model
                                                        .soundPlayer3!
                                                        .play());
                                              },
                                              controller: _model
                                                      .addonsValueController ??=
                                                  FormFieldController<
                                                      List<String>>(
                                                [],
                                              ),
                                              activeColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              checkColor: Colors.white,
                                              checkboxBorderColor:
                                                  const Color(0xFF95A1AC),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 12.0,
                                                      ),
                                              itemPadding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      75.0, 1.0, 75.0, 1.0),
                                              checkboxBorderRadius:
                                                  BorderRadius.circular(5.0),
                                              initialized:
                                                  _model.addonsValues != null,
                                            ).animateOnPageLoad(animationsMap[
                                                'checkboxGroupOnPageLoadAnimation']!),
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 5.0, 2.0),
                                            child: Icon(
                                              FFIcons.knotification5,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 14.0,
                                            ).animateOnPageLoad(animationsMap[
                                                'iconOnPageLoadAnimation4']!),
                                          ),
                                          SelectionArea(
                                              child: Text(
                                            'Escolha o Tamanho Desejado',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          )).animateOnPageLoad(animationsMap[
                                              'textOnPageLoadAnimation6']!),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    2.0, 0.0, 0.0, 0.0),
                                            child: SelectionArea(
                                                child: Text(
                                              '${valueOrDefault<String>(
                                                formatNumber(
                                                  _model.sizeSilderValue,
                                                  formatType: FormatType.custom,
                                                  format: '#',
                                                  locale: '',
                                                ),
                                                '6',
                                              )}   Fatias',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            )).animateOnPageLoad(animationsMap[
                                                'textOnPageLoadAnimation7']!),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 400.0,
                                        child: Slider(
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          inactiveColor: const Color(0xFFD1D1D1),
                                          min: 4.0,
                                          max: 12.0,
                                          value: _model.sizeSilderValue ??= 6.0,
                                          label:
                                              _model.sizeSilderValue.toString(),
                                          divisions: 1,
                                          onChanged: (newValue) async {
                                            setState(() => _model
                                                .sizeSilderValue = newValue);
                                            HapticFeedback.lightImpact();
                                            _model.soundPlayer4 ??=
                                                AudioPlayer();
                                            if (_model.soundPlayer4!.playing) {
                                              await _model.soundPlayer4!.stop();
                                            }
                                            _model.soundPlayer4!.setVolume(1.0);
                                            _model.soundPlayer4!
                                                .setAsset(
                                                    'assets/audios/zapsplat_multimedia_click_001_19367.mp3')
                                                .then((_) => _model
                                                    .soundPlayer4!
                                                    .play());

                                            if (_model.sizeSilderValue
                                                    .toString() ==
                                                '12') {
                                              if (animationsMap[
                                                      'imageOnActionTriggerAnimation'] !=
                                                  null) {
                                                await animationsMap[
                                                        'imageOnActionTriggerAnimation']!
                                                    .controller
                                                    .forward(from: 0.0);
                                              }
                                            } else {
                                              if (animationsMap[
                                                      'imageOnActionTriggerAnimation'] !=
                                                  null) {
                                                await animationsMap[
                                                        'imageOnActionTriggerAnimation']!
                                                    .controller
                                                    .forward(from: 0.0)
                                                    .whenComplete(animationsMap[
                                                            'imageOnActionTriggerAnimation']!
                                                        .controller
                                                        .reverse);
                                              }
                                            }
                                          },
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'sliderOnPageLoadAnimation']!),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.00, 1.00),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 60.0),
                      child: Container(
                        width: 85.0,
                        height: 85.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primary,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 8.0,
                              color: Color(0x25000000),
                              offset: Offset(0.0, 4.0),
                            )
                          ],
                          shape: BoxShape.circle,
                        ),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 60.0,
                          icon: Icon(
                            Icons.shopping_cart_outlined,
                            color: FlutterFlowTheme.of(context).secondary,
                            size: 33.0,
                          ),
                          onPressed: () async {
                            HapticFeedback.vibrate();
                            // Click Sound
                            _model.soundPlayer5 ??= AudioPlayer();
                            if (_model.soundPlayer5!.playing) {
                              await _model.soundPlayer5!.stop();
                            }
                            _model.soundPlayer5!.setVolume(1.0);
                            _model.soundPlayer5!
                                .setAsset(
                                    'assets/audios/zapsplat_catoon_bite_munch_single_005_56567.mp3')
                                .then((_) => _model.soundPlayer5!.play());

                            // Added to Cart Indicator
                            showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              barrierColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return GestureDetector(
                                  onTap: () =>
                                      _model.unfocusNode.canRequestFocus
                                          ? FocusScope.of(context)
                                              .requestFocus(_model.unfocusNode)
                                          : FocusScope.of(context).unfocus(),
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: const AddToCartWidget(),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));

                            // Wait for the Animation
                            await Future.delayed(
                                const Duration(milliseconds: 1900));
                            // Dismiss Indicator
                            Navigator.pop(context);
                            FFAppState().update(() {
                              FFAppState().addToCarrinho = true;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.00, 1.00),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 120.0),
                      child: Container(
                        width: 250.0,
                        height: 60.0,
                        decoration: const BoxDecoration(
                          color: Color(0x00F0F0F2),
                        ),
                        child: Align(
                          alignment: const AlignmentDirectional(0.00, 1.00),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 60.0,
                                height: 60.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 8.0,
                                      color: Color(0x20000000),
                                      offset: Offset(0.0, 4.0),
                                    )
                                  ],
                                  shape: BoxShape.circle,
                                ),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 200.0,
                                  borderWidth: 1.0,
                                  buttonSize: 60.0,
                                  icon: Icon(
                                    FFIcons.kfilter6,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 20.0,
                                  ),
                                  onPressed: () async {
                                    HapticFeedback.selectionClick();
                                    // Click Sound
                                    _model.soundPlayer6 ??= AudioPlayer();
                                    if (_model.soundPlayer6!.playing) {
                                      await _model.soundPlayer6!.stop();
                                    }
                                    _model.soundPlayer6!.setVolume(1.0);
                                    _model.soundPlayer6!
                                        .setAsset(
                                            'assets/audios/ui-click-97915.mp3')
                                        .then(
                                            (_) => _model.soundPlayer6!.play());

                                    if (FFAppState().OptionSedid == false) {
                                      // Show Options
                                      FFAppState().update(() {
                                        FFAppState().OptionSedid = true;
                                      });
                                    } else {
                                      // Hide Options
                                      FFAppState().update(() {
                                        FFAppState().OptionSedid = false;
                                      });
                                    }
                                  },
                                ),
                              ),
                              Container(
                                width: 60.0,
                                height: 60.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 8.0,
                                      color: Color(0x20000000),
                                      offset: Offset(0.0, 4.0),
                                    )
                                  ],
                                  shape: BoxShape.circle,
                                ),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 200.0,
                                  borderWidth: 0.0,
                                  buttonSize: 60.0,
                                  icon: Icon(
                                    Icons.favorite_border,
                                    color: FFAppState().addFavorito == false
                                        ? FlutterFlowTheme.of(context)
                                            .primaryText
                                        : FlutterFlowTheme.of(context)
                                            .alternate,
                                    size: 22.0,
                                  ),
                                  onPressed: () async {
                                    HapticFeedback.selectionClick();
                                    // Click Sound
                                    _model.soundPlayer7 ??= AudioPlayer();
                                    if (_model.soundPlayer7!.playing) {
                                      await _model.soundPlayer7!.stop();
                                    }
                                    _model.soundPlayer7!.setVolume(1.0);
                                    _model.soundPlayer7!
                                        .setAsset(
                                            'assets/audios/ui-click-97915.mp3')
                                        .then(
                                            (_) => _model.soundPlayer7!.play());

                                    if (FFAppState().addFavorito == false) {
                                      FFAppState().update(() {
                                        FFAppState().addFavorito = true;
                                      });
                                    } else {
                                      FFAppState().update(() {
                                        FFAppState().addFavorito = false;
                                      });
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.00, -1.00),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 245.0,
                        decoration: const BoxDecoration(
                          color: Color(0x00F0F0F2),
                        ),
                        child: Stack(
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  'assets/images/1yi0p_L.png',
                                  width: 40.0,
                                  height: 260.0,
                                  fit: BoxFit.cover,
                                ),
                                Image.asset(
                                  'assets/images/MAIN.png',
                                  width: 280.0,
                                  height: 260.0,
                                  fit: BoxFit.cover,
                                ),
                                Image.asset(
                                  'assets/images/r0dvv_R.png',
                                  width: 40.0,
                                  height: 260.0,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                            Align(
                              alignment: const AlignmentDirectional(0.00, 0.00),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 14.0),
                                child: Image.asset(
                                  'assets/images/pizza.png',
                                  width: 183.0,
                                  height: 183.0,
                                  fit: BoxFit.cover,
                                )
                                    .animateOnPageLoad(animationsMap[
                                        'imageOnPageLoadAnimation3']!)
                                    .animateOnActionTrigger(
                                      animationsMap[
                                          'imageOnActionTriggerAnimation']!,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
