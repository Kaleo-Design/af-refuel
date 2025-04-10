import '/all_components/ui_components/ui_header_sub/ui_header_sub_widget.dart';
import '/all_components/ui_components/ui_select_option/ui_select_option_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'ui_feedback_bar_model.dart';
export 'ui_feedback_bar_model.dart';

class UiFeedbackBarWidget extends StatefulWidget {
  const UiFeedbackBarWidget({
    super.key,
    bool? isSaved,
    bool? isCompleted,
  })  : this.isSaved = isSaved ?? false,
        this.isCompleted = isCompleted ?? false;

  final bool isSaved;
  final bool isCompleted;

  @override
  State<UiFeedbackBarWidget> createState() => _UiFeedbackBarWidgetState();
}

class _UiFeedbackBarWidgetState extends State<UiFeedbackBarWidget>
    with TickerProviderStateMixin {
  late UiFeedbackBarModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UiFeedbackBarModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.completed = widget.isCompleted;
      _model.saved = widget.isSaved;
      safeSetState(() {});
    });

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
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
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Align(
          alignment: AlignmentDirectional(0.0, 1.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 8.0,
                  sigmaY: 8.0,
                ),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 250),
                  curve: Curves.easeInOut,
                  width: double.infinity,
                  height: _model.showOptions ? 340.0 : 52.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).accent4,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          0.0,
                          1.0,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (_model.showOptions)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 0.0),
                                child: wrapWithModel(
                                  model: _model.uiHeaderSubModel,
                                  updateCallback: () => safeSetState(() {}),
                                  child: UiHeaderSubWidget(
                                    title: 'Quick Actions',
                                    subtitle:
                                        'You can decide how you interact with content like this with the options below.',
                                    header: false,
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: wrapWithModel(
                                      model: _model.uiSelectOptionModel1,
                                      updateCallback: () => safeSetState(() {}),
                                      updateOnChange: true,
                                      child: UiSelectOptionWidget(
                                        text: 'Less like this',
                                        icon: Icon(
                                          FFIcons.kthumbsDown,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 20.0,
                                        ),
                                        isSelected: false,
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
                                        text: 'More like this',
                                        icon: Icon(
                                          FFIcons.kthumbsUp,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 20.0,
                                        ),
                                        isSelected: false,
                                        action: () async {},
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 16.0)),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.uiSelectOptionModel3,
                                  updateCallback: () => safeSetState(() {}),
                                  updateOnChange: true,
                                  child: UiSelectOptionWidget(
                                    text: _model.saved
                                        ? 'Activity is Saved'
                                        : 'Save Activity',
                                    icon: Icon(
                                      FFIcons.kbookmark,
                                      color: _model.saved
                                          ? FlutterFlowTheme.of(context).primary
                                          : FlutterFlowTheme.of(context)
                                              .primaryText,
                                      size: 20.0,
                                    ),
                                    isSelected: _model.saved,
                                    action: () async {
                                      // update_save
                                      _model.saved = !_model.saved;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                decoration: BoxDecoration(),
                                child: wrapWithModel(
                                  model: _model.uiSelectOptionModel4,
                                  updateCallback: () => safeSetState(() {}),
                                  updateOnChange: true,
                                  child: UiSelectOptionWidget(
                                    text: 'Mark as Complete',
                                    icon: Icon(
                                      FFIcons.kcheckCircleBroken,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      size: 20.0,
                                    ),
                                    isSelected: _model.completed,
                                    action: () async {
                                      // update_completed
                                      _model.completed = !_model.completed;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () async {
                                  _model.showOptions = false;
                                  safeSetState(() {});
                                },
                                text: 'Close',
                                options: FFButtonOptions(
                                  width: double.infinity,
                                  height: 48.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).overlay30,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Figtree',
                                        letterSpacing: 0.0,
                                      ),
                                  elevation: 0.0,
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                  hoverColor:
                                      FlutterFlowTheme.of(context).alternate,
                                  hoverBorderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  hoverTextColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  hoverElevation: 3.0,
                                ),
                              ),
                            ]
                                .divide(SizedBox(height: 12.0))
                                .addToEnd(SizedBox(height: 12.0)),
                          ).animateOnPageLoad(
                              animationsMap['columnOnPageLoadAnimation']!),
                        ),
                      if (!_model.showOptions)
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: wrapWithModel(
                                  model: _model.uiSelectOptionModel5,
                                  updateCallback: () => safeSetState(() {}),
                                  updateOnChange: true,
                                  child: UiSelectOptionWidget(
                                    text: _model.saved ? 'Saved' : 'Save',
                                    icon: Icon(
                                      FFIcons.kbookmark,
                                      color: _model.saved
                                          ? FlutterFlowTheme.of(context).primary
                                          : FlutterFlowTheme.of(context)
                                              .primaryText,
                                      size: 20.0,
                                    ),
                                    isSelected: _model.saved,
                                    action: () async {
                                      // update_save
                                      _model.saved = !_model.saved;
                                      safeSetState(() {});
                                    },
                                  ),
                                ),
                              ),
                            ),
                            FlutterFlowIconButton(
                              borderRadius: 4.0,
                              buttonSize: 40.0,
                              fillColor: _model.completed
                                  ? FlutterFlowTheme.of(context).accent1
                                  : FlutterFlowTheme.of(context).overlay30,
                              icon: Icon(
                                FFIcons.kcheckCircleBroken,
                                color: _model.completed
                                    ? FlutterFlowTheme.of(context).primary
                                    : FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                              onPressed: () async {
                                _model.completed = !_model.completed;
                                safeSetState(() {});
                              },
                            ),
                            FlutterFlowIconButton(
                              borderRadius: 4.0,
                              buttonSize: 40.0,
                              icon: Icon(
                                FFIcons.kdotsVertical,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 24.0,
                              ),
                              onPressed: () async {
                                _model.showOptions = true;
                                safeSetState(() {});
                              },
                            ),
                          ]
                              .divide(SizedBox(width: 8.0))
                              .addToStart(SizedBox(width: 0.0))
                              .addToEnd(SizedBox(width: 4.0)),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
