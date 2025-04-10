import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'ui_header_sub_model.dart';
export 'ui_header_sub_model.dart';

class UiHeaderSubWidget extends StatefulWidget {
  const UiHeaderSubWidget({
    super.key,
    String? title,
    String? subtitle,
    bool? header,
  })  : this.title = title ?? 'Start your day',
        this.subtitle = subtitle ?? 'Productivity, Rest, Balance',
        this.header = header ?? true;

  final String title;
  final String subtitle;
  final bool header;

  @override
  State<UiHeaderSubWidget> createState() => _UiHeaderSubWidgetState();
}

class _UiHeaderSubWidgetState extends State<UiHeaderSubWidget>
    with TickerProviderStateMixin {
  late UiHeaderSubModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UiHeaderSubModel());

    animationsMap.addAll({
      'textOnPageLoadAnimation1': AnimationInfo(
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
            duration: 400.0.ms,
            begin: Offset(-20.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
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
            duration: 400.0.ms,
            begin: Offset(-20.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 400.0.ms,
            begin: Offset(-20.0, 0.0),
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.header)
          Text(
            widget.title,
            style: FlutterFlowTheme.of(context).headlineSmall.override(
                  fontFamily: 'Figtree',
                  letterSpacing: 0.0,
                ),
          ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation1']!),
        if (!widget.header)
          Text(
            widget.title,
            style: FlutterFlowTheme.of(context).titleLarge.override(
                  fontFamily: 'Figtree',
                  letterSpacing: 0.0,
                ),
          ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation2']!),
        Text(
          widget.subtitle,
          style: FlutterFlowTheme.of(context).labelMedium.override(
                fontFamily: 'Figtree',
                letterSpacing: 0.0,
                fontStyle: FontStyle.italic,
              ),
        ).animateOnPageLoad(animationsMap['textOnPageLoadAnimation3']!),
      ].divide(SizedBox(height: 4.0)),
    );
  }
}
