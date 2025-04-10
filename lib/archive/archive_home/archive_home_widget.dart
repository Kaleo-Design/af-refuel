import '/all_components/backgrounds/background_image/background_image_widget.dart';
import '/all_components/cards/card_activity/card_activity_widget.dart';
import '/all_components/nav/nav_custom/nav_custom_widget.dart';
import '/all_components/nav/nav_header/nav_header_widget.dart';
import '/all_components/ui_components/ui_header_sub/ui_header_sub_widget.dart';
import '/all_components/views/view_feedback/view_feedback_widget.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/assessment_components/modal_assessment/modal_assessment_widget.dart';
import '/pages/chat_components/chat_box/chat_box_widget.dart';
import '/index.dart';
import 'package:n_c_u_i_web_template_01_ls0zpd/app_state.dart'
    as n_c_u_i_web_template_01_ls0zpd_app_state;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'archive_home_model.dart';
export 'archive_home_model.dart';

class ArchiveHomeWidget extends StatefulWidget {
  const ArchiveHomeWidget({super.key});

  static String routeName = 'archive_home';
  static String routePath = '/archiveHome';

  @override
  State<ArchiveHomeWidget> createState() => _ArchiveHomeWidgetState();
}

class _ArchiveHomeWidgetState extends State<ArchiveHomeWidget>
    with TickerProviderStateMixin {
  late ArchiveHomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ArchiveHomeModel());

    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 100.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.698, 0),
            end: Offset(0, 0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'flexOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 100.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.698, 0),
            end: Offset(0, 0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 100.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.698, 0),
            end: Offset(0, 0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'flexOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 100.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.698, 0),
            end: Offset(0, 0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 100.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.698, 0),
            end: Offset(0, 0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'flexOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 100.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.698, 0),
            end: Offset(0, 0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.0, 20.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    context.watch<n_c_u_i_web_template_01_ls0zpd_app_state.FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Stack(
          children: [
            wrapWithModel(
              model: _model.backgroundImageModel,
              updateCallback: () => safeSetState(() {}),
              updateOnChange: true,
              child: BackgroundImageWidget(
                color: () {
                  if (_model.pageViewCurrentIndex == 0) {
                    return CurrentMood.two;
                  } else if (_model.pageViewCurrentIndex == 1) {
                    return CurrentMood.three;
                  } else if (_model.pageViewCurrentIndex == 2) {
                    return CurrentMood.four;
                  } else if (_model.pageViewCurrentIndex == 3) {
                    return CurrentMood.five;
                  } else {
                    return CurrentMood.six;
                  }
                }(),
                borderRadius: 0.0,
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.navHeaderModel,
                    updateCallback: () => safeSetState(() {}),
                    updateOnChange: true,
                    child: NavHeaderWidget(
                      progress: 0.4,
                      progressBG: () {
                        if (_model.pageViewCurrentIndex == 0) {
                          return FlutterFlowTheme.of(context).accent2;
                        } else if (_model.pageViewCurrentIndex == 1) {
                          return FlutterFlowTheme.of(context).success30;
                        } else {
                          return FlutterFlowTheme.of(context).accent3;
                        }
                      }(),
                      progressColor: () {
                        if (_model.pageViewCurrentIndex == 0) {
                          return FlutterFlowTheme.of(context).secondary;
                        } else if (_model.pageViewCurrentIndex == 1) {
                          return FlutterFlowTheme.of(context).success;
                        } else {
                          return FlutterFlowTheme.of(context).tertiary;
                        }
                      }(),
                      selectedDate: getCurrentTimestamp,
                      showDarkMode: false,
                      title: 'Home',
                      headerType: HeaderOptions.Welcome,
                      action: () async {},
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 430.0,
                            child: Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 16.0, 0.0, 16.0),
                                  child: PageView(
                                    controller: _model.pageViewController ??=
                                        PageController(initialPage: 0),
                                    onPageChanged: (_) => safeSetState(() {}),
                                    scrollDirection: Axis.horizontal,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            child: Text(
                                              'It\'s sunny out. Want a suggestion to get out?',
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily: 'Figtree',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ).animateOnPageLoad(animationsMap[
                                                'textOnPageLoadAnimation1']!),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            child: Flex(
                                              direction: Axis.horizontal,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                FFButtonWidget(
                                                  onPressed: () async {
                                                    await _model
                                                        .pageViewController
                                                        ?.nextPage(
                                                      duration: Duration(
                                                          milliseconds: 300),
                                                      curve: Curves.ease,
                                                    );
                                                  },
                                                  text: 'Skip',
                                                  options: FFButtonOptions(
                                                    width: 80.0,
                                                    height: 48.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 0.0,
                                                                12.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .overlay30,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily: 'Figtree',
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    elevation: 0.0,
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .overlay30,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    hoverColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    hoverBorderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 2.0,
                                                    ),
                                                    hoverTextColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    hoverElevation: 3.0,
                                                  ),
                                                ),
                                                FFButtonWidget(
                                                  onPressed: () async {
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      barrierColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent4,
                                                      context: context,
                                                      builder: (context) {
                                                        return GestureDetector(
                                                          onTap: () {
                                                            FocusScope.of(
                                                                    context)
                                                                .unfocus();
                                                            FocusManager
                                                                .instance
                                                                .primaryFocus
                                                                ?.unfocus();
                                                          },
                                                          child: Padding(
                                                            padding: MediaQuery
                                                                .viewInsetsOf(
                                                                    context),
                                                            child:
                                                                ModalAssessmentWidget(
                                                              piller:
                                                                  PillerStruct(
                                                                primaryColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                accent1: FlutterFlowTheme.of(
                                                                        context)
                                                                    .accent2,
                                                                pillar:
                                                                    'Spiritual',
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        safeSetState(() {}));
                                                  },
                                                  text:
                                                      'Yes, gimme suggestions',
                                                  options: FFButtonOptions(
                                                    height: 48.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 0.0,
                                                                12.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent2,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily: 'Figtree',
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    elevation: 0.0,
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent2,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    hoverColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    hoverBorderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 2.0,
                                                    ),
                                                    hoverTextColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    hoverElevation: 3.0,
                                                  ),
                                                ),
                                              ].divide(true
                                                  ? SizedBox(width: 16.0)
                                                  : SizedBox(height: 16.0)),
                                            ).animateOnPageLoad(animationsMap[
                                                'flexOnPageLoadAnimation1']!),
                                          ),
                                        ].divide(SizedBox(height: 24.0)),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                child: Text(
                                                  'How was your workout yesterday?',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily: 'Figtree',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                child: Text(
                                                  'Give us some feedback in order to get better insights for the week.',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelMedium
                                                      .override(
                                                        fontFamily: 'Figtree',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ].divide(SizedBox(height: 4.0)),
                                          ).animateOnPageLoad(animationsMap[
                                              'columnOnPageLoadAnimation']!),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            child: Flex(
                                              direction: Axis.horizontal,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                FFButtonWidget(
                                                  onPressed: () async {
                                                    await _model
                                                        .pageViewController
                                                        ?.nextPage(
                                                      duration: Duration(
                                                          milliseconds: 300),
                                                      curve: Curves.ease,
                                                    );
                                                  },
                                                  text: 'Skip',
                                                  options: FFButtonOptions(
                                                    width: 80.0,
                                                    height: 48.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 0.0,
                                                                12.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .overlay30,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily: 'Figtree',
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    elevation: 0.0,
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .overlay30,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    hoverColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    hoverBorderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 2.0,
                                                    ),
                                                    hoverTextColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    hoverElevation: 3.0,
                                                  ),
                                                ),
                                                FFButtonWidget(
                                                  onPressed: () async {
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      barrierColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent4,
                                                      context: context,
                                                      builder: (context) {
                                                        return GestureDetector(
                                                          onTap: () {
                                                            FocusScope.of(
                                                                    context)
                                                                .unfocus();
                                                            FocusManager
                                                                .instance
                                                                .primaryFocus
                                                                ?.unfocus();
                                                          },
                                                          child: Padding(
                                                            padding: MediaQuery
                                                                .viewInsetsOf(
                                                                    context),
                                                            child:
                                                                ModalAssessmentWidget(
                                                              piller:
                                                                  PillerStruct(
                                                                primaryColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .success,
                                                                accent1: FlutterFlowTheme.of(
                                                                        context)
                                                                    .success30,
                                                                pillar:
                                                                    'Fitness',
                                                              ),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        safeSetState(() {}));
                                                  },
                                                  text: 'Checkin',
                                                  options: FFButtonOptions(
                                                    width: 120.0,
                                                    height: 48.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 0.0,
                                                                12.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success30,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily: 'Figtree',
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    elevation: 0.0,
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .success30,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    hoverColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    hoverBorderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 2.0,
                                                    ),
                                                    hoverTextColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    hoverElevation: 3.0,
                                                  ),
                                                ),
                                              ].divide(true
                                                  ? SizedBox(width: 16.0)
                                                  : SizedBox(height: 16.0)),
                                            ).animateOnPageLoad(animationsMap[
                                                'flexOnPageLoadAnimation2']!),
                                          ),
                                        ].divide(SizedBox(height: 24.0)),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            child: Text(
                                              'Self-mastery is blah blah and this and that and all of these and don’t forget.',
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily: 'Figtree',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ).animateOnPageLoad(animationsMap[
                                                'textOnPageLoadAnimation2']!),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            child: Flex(
                                              direction: Axis.horizontal,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                FFButtonWidget(
                                                  onPressed: () async {
                                                    await _model
                                                        .pageViewController
                                                        ?.nextPage(
                                                      duration: Duration(
                                                          milliseconds: 300),
                                                      curve: Curves.ease,
                                                    );
                                                  },
                                                  text: 'Skip',
                                                  options: FFButtonOptions(
                                                    width: 80.0,
                                                    height: 48.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 0.0,
                                                                12.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .overlay30,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily: 'Figtree',
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    elevation: 0.0,
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .overlay30,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    hoverColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    hoverBorderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 2.0,
                                                    ),
                                                    hoverTextColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    hoverElevation: 3.0,
                                                  ),
                                                ),
                                                FFButtonWidget(
                                                  onPressed: () async {
                                                    context.pushNamed(
                                                        SubJournalWidget
                                                            .routeName);
                                                  },
                                                  text: 'Start Journal',
                                                  options: FFButtonOptions(
                                                    height: 48.0,
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(24.0, 0.0,
                                                                24.0, 0.0),
                                                    iconPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 0.0),
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .accent3,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily: 'Figtree',
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    elevation: 0.0,
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent3,
                                                      width: 2.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    hoverColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .alternate,
                                                    hoverBorderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .alternate,
                                                      width: 2.0,
                                                    ),
                                                    hoverTextColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryText,
                                                    hoverElevation: 3.0,
                                                  ),
                                                ),
                                              ].divide(true
                                                  ? SizedBox(width: 16.0)
                                                  : SizedBox(height: 16.0)),
                                            ).animateOnPageLoad(animationsMap[
                                                'flexOnPageLoadAnimation3']!),
                                          ),
                                        ].divide(SizedBox(height: 24.0)),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                            child: wrapWithModel(
                                              model: _model.uiHeaderSubModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: UiHeaderSubWidget(
                                                title:
                                                    'Journal today, you are on a 4 day streak, keep up the good work.',
                                                subtitle:
                                                    'Start a chat here...',
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 48.0,
                                            decoration: BoxDecoration(),
                                            child: wrapWithModel(
                                              model: _model.chatBoxModel,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              updateOnChange: true,
                                              child: ChatBoxWidget(
                                                readOnly: true,
                                                sendActon: () async {},
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 0.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                await _model.pageViewController
                                                    ?.animateToPage(
                                                  0,
                                                  duration: Duration(
                                                      milliseconds: 500),
                                                  curve: Curves.ease,
                                                );
                                              },
                                              text: 'Back to Start',
                                              options: FFButtonOptions(
                                                height: 48.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .overlay30,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleLarge
                                                        .override(
                                                          fontFamily: 'Figtree',
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 0.0,
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .overlay30,
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                hoverColor:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                hoverBorderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .alternate,
                                                  width: 2.0,
                                                ),
                                                hoverTextColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                hoverElevation: 3.0,
                                              ),
                                            ),
                                          ),
                                        ].divide(SizedBox(height: 16.0)),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 1.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 16.0),
                                    child: smooth_page_indicator
                                        .SmoothPageIndicator(
                                      controller: _model.pageViewController ??=
                                          PageController(initialPage: 0),
                                      count: 4,
                                      axisDirection: Axis.horizontal,
                                      onDotClicked: (i) async {
                                        await _model.pageViewController!
                                            .animateToPage(
                                          i,
                                          duration: Duration(milliseconds: 500),
                                          curve: Curves.ease,
                                        );
                                        safeSetState(() {});
                                      },
                                      effect: smooth_page_indicator
                                          .ExpandingDotsEffect(
                                        expansionFactor: 1.5,
                                        spacing: 8.0,
                                        radius: 8.0,
                                        dotWidth: 32.0,
                                        dotHeight: 8.0,
                                        dotColor: FlutterFlowTheme.of(context)
                                            .overlay30,
                                        activeDotColor:
                                            FlutterFlowTheme.of(context)
                                                .accent4,
                                        paintStyle: PaintingStyle.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          AnimatedContainer(
                            duration: Duration(milliseconds: 200),
                            curve: Curves.easeInOut,
                            width: double.infinity,
                            constraints: BoxConstraints(
                              minHeight: 470.0,
                              maxWidth: 770.0,
                            ),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  FlutterFlowTheme.of(context).overlay0,
                                  FlutterFlowTheme.of(context).accent4,
                                  FlutterFlowTheme.of(context)
                                      .secondaryBackground
                                ],
                                stops: [0.0, 0.2, 1.0],
                                begin: AlignmentDirectional(0.0, -1.0),
                                end: AlignmentDirectional(0, 1.0),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.uiHeaderSubModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: UiHeaderSubWidget(
                                      title: 'Start your day',
                                      subtitle: 'Productivity, Rest, Balance',
                                      header: true,
                                    ),
                                  ),
                                ),
                                ListView(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    wrapWithModel(
                                      model: _model.cardActivityModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      updateOnChange: true,
                                      child: CardActivityWidget(
                                        icon: Icon(
                                          FFIcons.kcalendarDate,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 20.0,
                                        ),
                                        title: 'Morning Routine',
                                        subTitle: 'Teeth, rinse, lorem, ipsum',
                                        action: () async {
                                          context.pushNamed(
                                              SubWikiOneWidget.routeName);
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.cardActivityModel2,
                                      updateCallback: () => safeSetState(() {}),
                                      updateOnChange: true,
                                      child: CardActivityWidget(
                                        icon: Icon(
                                          Icons.directions_run_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 20.0,
                                        ),
                                        title: 'Morning Workout',
                                        subTitle: 'Teeth, rinse, lorem, ipsum',
                                        details: true,
                                        action: () async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.cardActivityModel3,
                                      updateCallback: () => safeSetState(() {}),
                                      updateOnChange: true,
                                      child: CardActivityWidget(
                                        icon: Icon(
                                          FFIcons.kclockStopwatch,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 20.0,
                                        ),
                                        title: 'Pomodoro Timer',
                                        subTitle: 'Teeth, rinse, lorem, ipsum',
                                        details: false,
                                        action: () async {
                                          context.pushNamed(
                                              SubActivityDetailsWidget
                                                  .routeName);
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.cardActivityModel4,
                                      updateCallback: () => safeSetState(() {}),
                                      updateOnChange: true,
                                      child: CardActivityWidget(
                                        icon: Icon(
                                          FFIcons.kcalendarDate,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 20.0,
                                        ),
                                        title: 'Morning Routine',
                                        subTitle: 'Teeth, rinse, lorem, ipsum',
                                        details: false,
                                        action: () async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.cardActivityModel5,
                                      updateCallback: () => safeSetState(() {}),
                                      updateOnChange: true,
                                      child: CardActivityWidget(
                                        icon: Icon(
                                          FFIcons.kcalendarDate,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 20.0,
                                        ),
                                        title: 'Morning Routine',
                                        subTitle: 'Teeth, rinse, lorem, ipsum',
                                        details: false,
                                        action: () async {},
                                      ),
                                    ),
                                    Container(
                                      child: wrapWithModel(
                                        model: _model.viewFeedbackModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: ViewFeedbackWidget(),
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 8.0)),
                                ),
                                Divider(
                                  thickness: 2.0,
                                  color: FlutterFlowTheme.of(context).alternate,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 16.0, 0.0),
                                  child: wrapWithModel(
                                    model: _model.uiHeaderSubModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: UiHeaderSubWidget(
                                      title: 'Midday',
                                      subtitle: 'Productivity, rest, balance',
                                      header: true,
                                    ),
                                  ),
                                ),
                                ListView(
                                  padding: EdgeInsets.fromLTRB(
                                    0,
                                    0,
                                    0,
                                    80.0,
                                  ),
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    wrapWithModel(
                                      model: _model.cardActivityModel6,
                                      updateCallback: () => safeSetState(() {}),
                                      updateOnChange: true,
                                      child: CardActivityWidget(
                                        icon: Icon(
                                          FFIcons.kcalendarDate,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 20.0,
                                        ),
                                        title: 'Morning Routine',
                                        subTitle: 'Teeth, rinse, lorem, ipsum',
                                        action: () async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.cardActivityModel7,
                                      updateCallback: () => safeSetState(() {}),
                                      updateOnChange: true,
                                      child: CardActivityWidget(
                                        icon: Icon(
                                          Icons.directions_run_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 20.0,
                                        ),
                                        title: 'Morning Workout',
                                        subTitle: 'Teeth, rinse, lorem, ipsum',
                                        details: true,
                                        action: () async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.cardActivityModel8,
                                      updateCallback: () => safeSetState(() {}),
                                      updateOnChange: true,
                                      child: CardActivityWidget(
                                        icon: Icon(
                                          FFIcons.kcalendarDate,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 20.0,
                                        ),
                                        title: 'Morning Routine',
                                        subTitle: 'Teeth, rinse, lorem, ipsum',
                                        details: false,
                                        action: () async {},
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.cardActivityModel9,
                                      updateCallback: () => safeSetState(() {}),
                                      updateOnChange: true,
                                      child: CardActivityWidget(
                                        icon: Icon(
                                          FFIcons.kcalendarDate,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 20.0,
                                        ),
                                        title: 'Morning Routine',
                                        subTitle: 'Teeth, rinse, lorem, ipsum',
                                        details: false,
                                        action: () async {},
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 8.0)),
                                ),
                              ]
                                  .divide(SizedBox(height: 12.0))
                                  .addToEnd(SizedBox(height: 44.0)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: wrapWithModel(
                model: _model.navCustomModel,
                updateCallback: () => safeSetState(() {}),
                updateOnChange: true,
                child: NavCustomWidget(
                  selectedNavParameter: 1,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
