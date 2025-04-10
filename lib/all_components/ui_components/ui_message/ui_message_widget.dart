import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'ui_message_model.dart';
export 'ui_message_model.dart';

class UiMessageWidget extends StatefulWidget {
  const UiMessageWidget({
    super.key,
    this.feedbackType,
    String? title,
    this.descripition,
  }) : this.title = title ?? 'Feedback Received!';

  final ContentFeedback? feedbackType;
  final String title;
  final String? descripition;

  @override
  State<UiMessageWidget> createState() => _UiMessageWidgetState();
}

class _UiMessageWidgetState extends State<UiMessageWidget>
    with TickerProviderStateMixin {
  late UiMessageModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UiMessageModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
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
            begin: Offset(0.0, 80.0),
            end: Offset(0.0, 0.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.524, 0),
            end: Offset(0, 0),
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
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: valueOrDefault<Color>(
          () {
            if ((widget.feedbackType == ContentFeedback.not_for_me) ||
                (widget.feedbackType == ContentFeedback.suggest_less)) {
              return FlutterFlowTheme.of(context).warning;
            } else if (widget.feedbackType == ContentFeedback.loved_it) {
              return FlutterFlowTheme.of(context).success30;
            } else if (widget.feedbackType == ContentFeedback.Neutral) {
              return FlutterFlowTheme.of(context).secondaryBackground;
            } else {
              return FlutterFlowTheme.of(context).accent1;
            }
          }(),
          FlutterFlowTheme.of(context).accent1,
        ),
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: valueOrDefault<Color>(
            () {
              if ((widget.feedbackType == ContentFeedback.not_for_me) ||
                  (widget.feedbackType == ContentFeedback.suggest_less)) {
                return FlutterFlowTheme.of(context).warning;
              } else if (widget.feedbackType == ContentFeedback.loved_it) {
                return FlutterFlowTheme.of(context).success;
              } else if (widget.feedbackType == ContentFeedback.Neutral) {
                return FlutterFlowTheme.of(context).alternate;
              } else {
                return FlutterFlowTheme.of(context).accent1;
              }
            }(),
            FlutterFlowTheme.of(context).accent1,
          ),
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: FlutterFlowTheme.of(context).bodyLarge.override(
                    fontFamily: 'Figtree',
                    letterSpacing: 0.0,
                  ),
            ),
            if (widget.descripition == null || widget.descripition == '')
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                child: Text(
                  () {
                    if (widget.feedbackType == ContentFeedback.not_for_me) {
                      return 'We will show you less of this type of content, thank you for your feedback.';
                    } else if (widget.feedbackType ==
                        ContentFeedback.liked_it) {
                      return 'You got it! We\'ll show you more of this type of content.';
                    } else {
                      return 'Thank you! We\'ll keep this content coming.';
                    }
                  }(),
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Figtree',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            if (widget.descripition != null && widget.descripition != '')
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                child: Text(
                  valueOrDefault<String>(
                    widget.descripition,
                    'Really awesome work!',
                  ),
                  style: FlutterFlowTheme.of(context).labelMedium.override(
                        fontFamily: 'Figtree',
                        letterSpacing: 0.0,
                      ),
                ),
              ),
          ],
        ),
      ),
    ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
  }
}
