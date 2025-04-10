import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'ui_actions_analyze_model.dart';
export 'ui_actions_analyze_model.dart';

class UiActionsAnalyzeWidget extends StatefulWidget {
  const UiActionsAnalyzeWidget({
    super.key,
    bool? showOptions,
    required this.actionAi,
  }) : this.showOptions = showOptions ?? false;

  final bool showOptions;
  final Future Function()? actionAi;

  @override
  State<UiActionsAnalyzeWidget> createState() => _UiActionsAnalyzeWidgetState();
}

class _UiActionsAnalyzeWidgetState extends State<UiActionsAnalyzeWidget>
    with TickerProviderStateMixin {
  late UiActionsAnalyzeModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UiActionsAnalyzeModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      // update_state
      _model.showOptionsState = widget.showOptions;
      safeSetState(() {});
      if (widget.showOptions == true) {
        // start_animate
        if (animationsMap['containerOnActionTriggerAnimation'] != null) {
          animationsMap['containerOnActionTriggerAnimation']!
              .controller
              .forward(from: 0.0);
        }
      }
    });

    animationsMap.addAll({
      'containerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 0.375,
          ),
        ],
      ),
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          RotateEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.7,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(-20.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
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
            begin: Offset(0.6, 0.6),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          RotateEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.7,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(-20.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.6, 0.6),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          RotateEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.7,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(-20.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.6, 0.6),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          RotateEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.7,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(-20.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 400.0.ms,
            begin: Offset(0.6, 0.6),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
            child: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                // check_state_toggle
                _model.showOptionsState = !_model.showOptionsState;
                safeSetState(() {});
                if (widget.showOptions == true) {
                  // START
                  if (animationsMap['containerOnActionTriggerAnimation'] !=
                      null) {
                    animationsMap['containerOnActionTriggerAnimation']!
                        .controller
                        .forward(from: 0.0);
                  }
                } else {
                  // REVERSE
                  if (animationsMap['containerOnActionTriggerAnimation'] !=
                      null) {
                    animationsMap['containerOnActionTriggerAnimation']!
                        .controller
                        .reverse();
                  }
                }
              },
              child: Container(
                width: 36.0,
                height: 36.0,
                decoration: BoxDecoration(
                  color: widget.showOptions
                      ? FlutterFlowTheme.of(context).primaryBackground
                      : FlutterFlowTheme.of(context).secondaryBackground,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: widget.showOptions
                        ? FlutterFlowTheme.of(context).primaryBackground
                        : FlutterFlowTheme.of(context).alternate,
                  ),
                ),
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Icon(
                  FFIcons.kplus,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 20.0,
                ),
              ),
            ).animateOnActionTrigger(
              animationsMap['containerOnActionTriggerAnimation']!,
            ),
          ),
          if (_model.showOptionsState)
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 44.0,
                  height: 44.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                  ),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Icon(
                    FFIcons.kimagePlus,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 20.0,
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation1']!),
                Container(
                  width: 44.0,
                  height: 44.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                  ),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Icon(
                    FFIcons.kmicrophone02,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 20.0,
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation2']!),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await widget.actionAi?.call();
                  },
                  child: Container(
                    width: 44.0,
                    height: 44.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                    ),
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Icon(
                      FFIcons.kmagicWand01,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 20.0,
                    ),
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation3']!),
                Container(
                  width: 44.0,
                  height: 44.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                  ),
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Icon(
                    FFIcons.kcalendarDate,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 20.0,
                  ),
                ).animateOnPageLoad(
                    animationsMap['containerOnPageLoadAnimation4']!),
              ].divide(SizedBox(width: 8.0)),
            ),
        ].divide(SizedBox(width: 16.0)),
      ),
    );
  }
}
