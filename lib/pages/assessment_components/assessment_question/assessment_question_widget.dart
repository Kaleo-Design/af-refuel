import '/all_components/ui_components/ui_select_option/ui_select_option_widget.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/journalling/journal_components/card_highlight/card_highlight_widget.dart';
import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'assessment_question_model.dart';
export 'assessment_question_model.dart';

class AssessmentQuestionWidget extends StatefulWidget {
  const AssessmentQuestionWidget({
    super.key,
    required this.questionDetails,
    required this.selectAction,
  });

  final QuestionStruct? questionDetails;
  final Future Function()? selectAction;

  @override
  State<AssessmentQuestionWidget> createState() =>
      _AssessmentQuestionWidgetState();
}

class _AssessmentQuestionWidgetState extends State<AssessmentQuestionWidget>
    with TickerProviderStateMixin {
  late AssessmentQuestionModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AssessmentQuestionModel());

    _model.shortAnswerTextController ??= TextEditingController();
    _model.shortAnswerFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: null,
      ),
      'iconOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.7, 0.7),
            end: Offset(1.0, 1.0),
          ),
          RotateEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.7,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.873, 0),
            end: Offset(0, 0),
          ),
        ],
      ),
      'iconOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.7, 0.7),
            end: Offset(1.0, 1.0),
          ),
          RotateEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.7,
            end: 1.0,
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.873, 0),
            end: Offset(0, 0),
          ),
        ],
      ),
      'iconOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.7, 0.7),
            end: Offset(1.0, 1.0),
          ),
          RotateEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.7,
            end: 1.0,
          ),
        ],
      ),
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 40.0),
            end: Offset(0.0, 0.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.873, 0),
            end: Offset(0, 0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: null,
      ),
      'iconOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.7, 0.7),
            end: Offset(1.0, 1.0),
          ),
          RotateEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.7,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                valueOrDefault<String>(
                  widget.questionDetails?.name,
                  'Human value and respect should be the greatest social value.',
                ),
                style: FlutterFlowTheme.of(context).displaySmall.override(
                      fontFamily: 'Figtree',
                      letterSpacing: 0.0,
                    ),
              ),
              Text(
                valueOrDefault<String>(
                  widget.questionDetails?.description,
                  'Select an option below.',
                ),
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Figtree',
                      letterSpacing: 0.0,
                    ),
              ),
            ].divide(SizedBox(height: 4.0)),
          ),
        ),
        Expanded(
          child: Builder(
            builder: (context) {
              if (widget.questionDetails?.type ==
                  QuestionTypes.single_selection) {
                return Builder(
                  builder: (context) {
                    final options =
                        widget.questionDetails?.options.toList() ?? [];

                    return ListView.separated(
                      padding: EdgeInsets.fromLTRB(
                        0,
                        12.0,
                        0,
                        0,
                      ),
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: options.length,
                      separatorBuilder: (_, __) => SizedBox(height: 12.0),
                      itemBuilder: (context, optionsIndex) {
                        final optionsItem = options[optionsIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              _model.selectedOption =
                                  '${optionsIndex.toString()}: ${valueOrDefault<String>(
                                optionsItem,
                                'Answer Option Here',
                              )}';
                              safeSetState(() {});
                              unawaited(
                                () async {
                                  await widget.selectAction?.call();
                                }(),
                              );
                            },
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: _model.selectedOption ==
                                        '${optionsIndex.toString()}: ${valueOrDefault<String>(
                                          optionsItem,
                                          'Answer Option Here',
                                        )}'
                                    ? FlutterFlowTheme.of(context).accent1
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: _model.selectedOption ==
                                          '${optionsIndex.toString()}: ${valueOrDefault<String>(
                                            optionsItem,
                                            'Answer Option Here',
                                          )}'
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context).alternate,
                                  width: 1.0,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 12.0, 8.0, 12.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '${valueOrDefault<String>(
                                        optionsItem,
                                        'Answer Option Here',
                                      )}',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .override(
                                            fontFamily: 'Figtree',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    if (_model.selectedOption ==
                                        '${optionsIndex.toString()}: ${valueOrDefault<String>(
                                          optionsItem,
                                          'Answer Option Here',
                                        )}')
                                      Icon(
                                        FFIcons.kcheckCircleBroken,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 24.0,
                                      ).animateOnPageLoad(animationsMap[
                                          'iconOnPageLoadAnimation1']!),
                                  ],
                                ),
                              ),
                            ),
                          ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation1']!,
                            effects: [
                              VisibilityEffect(duration: 1.ms),
                              FadeEffect(
                                curve: Curves.easeInOut,
                                delay: 0.0.ms,
                                duration: 300.0.ms,
                                begin: 0.0,
                                end: 1.0,
                              ),
                              MoveEffect(
                                curve: Curves.easeInOut,
                                delay: 0.0.ms,
                                duration: 300.0.ms,
                                begin: Offset(0.0, 40.0),
                                end: Offset(0.0, 0.0),
                              ),
                              TiltEffect(
                                curve: Curves.easeInOut,
                                delay: 0.0.ms,
                                duration: 300.0.ms,
                                begin: Offset(0.873, 0),
                                end: Offset(0, 0),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                );
              } else if (widget.questionDetails?.type ==
                  QuestionTypes.likert_scale) {
                return Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Builder(
                              builder: (context) {
                                final options = widget.questionDetails?.options
                                        .toList() ??
                                    [];

                                return Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(options.length,
                                      (optionsIndex) {
                                    final optionsItem = options[optionsIndex];
                                    return Expanded(
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.selectedOption =
                                              '${optionsIndex.toString()}: ${valueOrDefault<String>(
                                            optionsItem,
                                            'Answer Option Here',
                                          )}';
                                          safeSetState(() {});
                                        },
                                        child: Container(
                                          width: 300.0,
                                          height: 90.0,
                                          decoration: BoxDecoration(
                                            color: _model.selectedOption ==
                                                    '${optionsIndex.toString()}: ${valueOrDefault<String>(
                                                      optionsItem,
                                                      'Answer Option Here',
                                                    )}'
                                                ? FlutterFlowTheme.of(context)
                                                    .accent1
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(
                                                  valueOrDefault<double>(
                                                optionsIndex == 0 ? 8.0 : 0.0,
                                                0.0,
                                              )),
                                              bottomRight: Radius.circular(
                                                  valueOrDefault<double>(
                                                optionsIndex ==
                                                        valueOrDefault<int>(
                                                          widget
                                                                  .questionDetails!
                                                                  .options
                                                                  .length -
                                                              1,
                                                          0,
                                                        )
                                                    ? 8.0
                                                    : 0.0,
                                                0.0,
                                              )),
                                              topLeft: Radius.circular(
                                                  valueOrDefault<double>(
                                                optionsIndex == 0 ? 8.0 : 0.0,
                                                0.0,
                                              )),
                                              topRight: Radius.circular(
                                                  valueOrDefault<double>(
                                                optionsIndex ==
                                                        valueOrDefault<int>(
                                                          widget
                                                                  .questionDetails!
                                                                  .options
                                                                  .length -
                                                              1,
                                                          0,
                                                        )
                                                    ? 8.0
                                                    : 0.0,
                                                0.0,
                                              )),
                                            ),
                                            border: Border.all(
                                              color: _model.selectedOption ==
                                                      '${optionsIndex.toString()}: ${valueOrDefault<String>(
                                                        optionsItem,
                                                        'Answer Option Here',
                                                      )}'
                                                  ? FlutterFlowTheme.of(context)
                                                      .primary
                                                  : FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    4.0, 12.0, 4.0, 12.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Icon(
                                                  FFIcons.kcheckCircleBroken,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ).animateOnPageLoad(animationsMap[
                                                    'iconOnPageLoadAnimation2']!),
                                                AutoSizeText(
                                                  valueOrDefault<String>(
                                                    optionsItem,
                                                    'Answer Option Here',
                                                  ),
                                                  textAlign: TextAlign.center,
                                                  maxLines: 2,
                                                  minFontSize: 8.0,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Figtree',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ].divide(SizedBox(height: 8.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                );
                              },
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation2']!),
                      ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                    ))
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 16.0, 16.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Builder(
                              builder: (context) {
                                final options = widget.questionDetails?.options
                                        .toList() ??
                                    [];

                                return ListView.builder(
                                  padding: EdgeInsets.zero,
                                  reverse: true,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: options.length,
                                  itemBuilder: (context, optionsIndex) {
                                    final optionsItem = options[optionsIndex];
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        _model.selectedOption =
                                            '${optionsIndex.toString()}: ${valueOrDefault<String>(
                                          optionsItem,
                                          'Answer Option Here',
                                        )}';
                                        safeSetState(() {});
                                      },
                                      child: Container(
                                        width: 300.0,
                                        height: 80.0,
                                        decoration: BoxDecoration(
                                          color: _model.selectedOption ==
                                                  '${optionsIndex.toString()}: ${valueOrDefault<String>(
                                                    optionsItem,
                                                    'Answer Option Here',
                                                  )}'
                                              ? FlutterFlowTheme.of(context)
                                                  .accent1
                                              : FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(
                                                valueOrDefault<double>(
                                              optionsIndex == 0 ? 8.0 : 0.0,
                                              0.0,
                                            )),
                                            bottomRight: Radius.circular(
                                                valueOrDefault<double>(
                                              optionsIndex == 0 ? 8.0 : 0.0,
                                              0.0,
                                            )),
                                            topLeft: Radius.circular(
                                                valueOrDefault<double>(
                                              optionsIndex ==
                                                      valueOrDefault<int>(
                                                        widget.questionDetails!
                                                                .options.length -
                                                            1,
                                                        0,
                                                      )
                                                  ? 8.0
                                                  : 0.0,
                                              0.0,
                                            )),
                                            topRight: Radius.circular(
                                                valueOrDefault<double>(
                                              optionsIndex ==
                                                      valueOrDefault<int>(
                                                        widget.questionDetails!
                                                                .options.length -
                                                            1,
                                                        0,
                                                      )
                                                  ? 8.0
                                                  : 0.0,
                                              0.0,
                                            )),
                                          ),
                                          border: Border.all(
                                            color: _model.selectedOption ==
                                                    '${optionsIndex.toString()}: ${valueOrDefault<String>(
                                                      optionsItem,
                                                      'Answer Option Here',
                                                    )}'
                                                ? FlutterFlowTheme.of(context)
                                                    .primary
                                                : FlutterFlowTheme.of(context)
                                                    .alternate,
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  4.0, 8.0, 4.0, 8.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              if (_model.selectedOption ==
                                                  '${optionsIndex.toString()}: ${valueOrDefault<String>(
                                                    optionsItem,
                                                    'Answer Option Here',
                                                  )}')
                                                Icon(
                                                  FFIcons.kcheckCircleBroken,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ).animateOnPageLoad(animationsMap[
                                                    'iconOnPageLoadAnimation3']!),
                                              AutoSizeText(
                                                valueOrDefault<String>(
                                                  optionsItem,
                                                  'Answer Option Here',
                                                ),
                                                textAlign: TextAlign.center,
                                                maxLines: 2,
                                                minFontSize: 8.0,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Figtree',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ].divide(SizedBox(width: 12.0)),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation3']!),
                      ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 16.0, 12.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Material(
                                  color: Colors.transparent,
                                  elevation: 2.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Container(
                                    width: 36.0,
                                    height: 36.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        '😔',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Figtree',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 100.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  elevation: 2.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  child: Container(
                                    width: 36.0,
                                    height: 36.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Text(
                                        '😃',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Figtree',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ].divide(SizedBox(width: 12.0)),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              child: Slider(
                                activeColor:
                                    FlutterFlowTheme.of(context).primary,
                                inactiveColor:
                                    FlutterFlowTheme.of(context).accent1,
                                min: 0.0,
                                max: 5.0,
                                value: _model.scaleSllideValue ??= 3.0,
                                label:
                                    _model.scaleSllideValue?.toStringAsFixed(2),
                                divisions: 5,
                                onChanged: (newValue) {
                                  newValue =
                                      double.parse(newValue.toStringAsFixed(2));
                                  safeSetState(
                                      () => _model.scaleSllideValue = newValue);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              } else if ((widget.questionDetails?.type ==
                      QuestionTypes.short_text) ||
                  (widget.questionDetails?.type == QuestionTypes.long_text)) {
                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          child: TextFormField(
                            controller: _model.shortAnswerTextController,
                            focusNode: _model.shortAnswerFocusNode,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              alignLabelWithHint: true,
                              hintText: 'Please enter your thoughts here...',
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 24.0, 20.0, 24.0),
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Figtree',
                                  letterSpacing: 0.0,
                                ),
                            maxLines: 24,
                            minLines: valueOrDefault<int>(
                              widget.questionDetails?.type ==
                                      QuestionTypes.long_text
                                  ? 8
                                  : 2,
                              8,
                            ),
                            cursorColor: FlutterFlowTheme.of(context).primary,
                            validator: _model.shortAnswerTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 16.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: wrapWithModel(
                                model: _model.uiSelectOptionModel1,
                                updateCallback: () => safeSetState(() {}),
                                updateOnChange: true,
                                child: UiSelectOptionWidget(
                                  text: 'Save to Journal',
                                  icon: Icon(
                                    FFIcons.kbookmark,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                  isSelected: false,
                                  fontSize: 14.0,
                                  action: () async {},
                                ),
                              ),
                            ),
                            Expanded(
                              child: wrapWithModel(
                                model: _model.uiSelectOptionModel2,
                                updateCallback: () => safeSetState(() {}),
                                updateOnChange: true,
                                child: UiSelectOptionWidget(
                                  text: 'Add to Insights',
                                  icon: Icon(
                                    FFIcons.kmagicWand01,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                  isSelected: false,
                                  fontSize: 14.0,
                                  action: () async {},
                                ),
                              ),
                            ),
                          ].divide(SizedBox(width: 12.0)),
                        ),
                      ),
                      if (_model.uiSelectOptionModel1.selectedState)
                        wrapWithModel(
                          model: _model.cardHighlightModel1,
                          updateCallback: () => safeSetState(() {}),
                          updateOnChange: true,
                          child: CardHighlightWidget(
                            title: 'Saving to Ai Journal',
                            description:
                                'We\'ll save this answer to your journal to be analyzed & used in your conversations with the Ai assistent.',
                            showActions: false,
                            acceptAction: () async {},
                          ),
                        ),
                      if (_model.uiSelectOptionModel2.selectedState)
                        wrapWithModel(
                          model: _model.cardHighlightModel2,
                          updateCallback: () => safeSetState(() {}),
                          updateOnChange: true,
                          child: CardHighlightWidget(
                            title: 'Adding to Insights',
                            description:
                                'Our Ai assistant will analyze this as part of their knowledge base.',
                            showActions: false,
                            acceptAction: () async {},
                          ),
                        ),
                    ]
                        .divide(SizedBox(height: 12.0))
                        .addToEnd(SizedBox(height: 32.0)),
                  ),
                ).animateOnPageLoad(
                    animationsMap['columnOnPageLoadAnimation']!);
              } else {
                return Builder(
                  builder: (context) {
                    final options =
                        widget.questionDetails?.options.toList() ?? [];

                    return ListView.separated(
                      padding: EdgeInsets.fromLTRB(
                        0,
                        12.0,
                        0,
                        0,
                      ),
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: options.length,
                      separatorBuilder: (_, __) => SizedBox(height: 12.0),
                      itemBuilder: (context, optionsIndex) {
                        final optionsItem = options[optionsIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              if (_model.selectedOptionsList.contains(
                                  '${optionsIndex.toString()}: ${optionsItem}')) {
                                // remove_item_from_list
                                _model.removeFromSelectedOptionsList(
                                    '${optionsIndex.toString()}: ${valueOrDefault<String>(
                                  optionsItem,
                                  'Answer Option Here',
                                )}');
                                safeSetState(() {});
                              } else {
                                // add_item_to_list
                                _model.addToSelectedOptionsList(
                                    '${optionsIndex.toString()}: ${valueOrDefault<String>(
                                  optionsItem,
                                  'Answer Option Here',
                                )}');
                                safeSetState(() {});
                              }
                            },
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: _model.selectedOptionsList.contains(
                                        '${optionsIndex.toString()}: ${optionsItem}')
                                    ? FlutterFlowTheme.of(context).accent1
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: valueOrDefault<Color>(
                                    _model.selectedOptionsList.contains(
                                            '${optionsIndex.toString()}: ${optionsItem}')
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context)
                                            .alternate,
                                    FlutterFlowTheme.of(context).alternate,
                                  ),
                                  width: 1.0,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 12.0, 8.0, 12.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '${valueOrDefault<String>(
                                        optionsItem,
                                        'Answer Option Here',
                                      )}',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Figtree',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    if (_model.selectedOptionsList.contains(
                                        '${optionsIndex.toString()}: ${optionsItem}'))
                                      Icon(
                                        FFIcons.kcheckCircleBroken,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 24.0,
                                      ).animateOnPageLoad(animationsMap[
                                          'iconOnPageLoadAnimation4']!),
                                  ],
                                ),
                              ),
                            ),
                          ).animateOnPageLoad(
                            animationsMap['containerOnPageLoadAnimation4']!,
                            effects: [
                              VisibilityEffect(duration: 1.ms),
                              FadeEffect(
                                curve: Curves.easeInOut,
                                delay: 0.0.ms,
                                duration: 300.0.ms,
                                begin: 0.0,
                                end: 1.0,
                              ),
                              MoveEffect(
                                curve: Curves.easeInOut,
                                delay: 0.0.ms,
                                duration: 300.0.ms,
                                begin: Offset(0.0, 40.0),
                                end: Offset(0.0, 0.0),
                              ),
                              TiltEffect(
                                curve: Curves.easeInOut,
                                delay: 0.0.ms,
                                duration: 300.0.ms,
                                begin: Offset(0.873, 0),
                                end: Offset(0, 0),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                );
              }
            },
          ),
        ),
      ].divide(SizedBox(height: 12.0)),
    );
  }
}
