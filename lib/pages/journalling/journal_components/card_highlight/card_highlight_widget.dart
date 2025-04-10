import '/all_components/ui_components/indicator_new/indicator_new_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'card_highlight_model.dart';
export 'card_highlight_model.dart';

class CardHighlightWidget extends StatefulWidget {
  const CardHighlightWidget({
    super.key,
    String? title,
    String? description,
    bool? showActions,
    required this.acceptAction,
  })  : this.title = title ?? 'Ai Summary',
        this.description = description ??
            'Have Ai Summarize your day for you, simply type in a short description or use the audio input and tap the wand icon below when you have completed it..',
        this.showActions = showActions ?? false;

  final String title;
  final String description;
  final bool showActions;
  final Future Function()? acceptAction;

  @override
  State<CardHighlightWidget> createState() => _CardHighlightWidgetState();
}

class _CardHighlightWidgetState extends State<CardHighlightWidget>
    with TickerProviderStateMixin {
  late CardHighlightModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardHighlightModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      // loading_true
      _model.isLoading = true;
      _model.reWrite = false;
      safeSetState(() {});
      await Future.delayed(const Duration(milliseconds: 1200));
      // loading_false
      _model.isLoading = false;
      safeSetState(() {});
    });

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 800.0.ms,
            color: FlutterFlowTheme.of(context).accent4,
            angle: 0.524,
          ),
        ],
      ),
      'textOnPageLoadAnimation': AnimationInfo(
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
            duration: 300.0.ms,
            begin: Offset(0.0, 12.0),
            end: Offset(0.0, 0.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.559, 0),
            end: Offset(0, 0),
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
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).accent4,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).alternate,
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      FFIcons.kmagicWand01,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 20.0,
                    ),
                    Expanded(
                      child: Text(
                        widget.title,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Figtree',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.indicatorNewModel,
                      updateCallback: () => safeSetState(() {}),
                      updateOnChange: true,
                      child: IndicatorNewWidget(
                        color: FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ].divide(SizedBox(width: 8.0)),
                ),
              ),
              Divider(
                height: 12.0,
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).alternate,
              ),
              Builder(
                builder: (context) {
                  if (_model.isLoading) {
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 150.0,
                          height: 16.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).alternate,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        Container(
                          width: 240.0,
                          height: 16.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).alternate,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        Container(
                          width: 200.0,
                          height: 16.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).alternate,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ].divide(SizedBox(height: 4.0)),
                    ).animateOnPageLoad(
                        animationsMap['columnOnPageLoadAnimation']!);
                  } else {
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 0.0),
                          child: Text(
                            '${widget.description}',
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Figtree',
                                  letterSpacing: 0.0,
                                  fontStyle: FontStyle.italic,
                                ),
                          ).animateOnPageLoad(
                              animationsMap['textOnPageLoadAnimation']!),
                        ),
                      ],
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
