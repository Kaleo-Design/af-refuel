import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'card_stats_model.dart';
export 'card_stats_model.dart';

class CardStatsWidget extends StatefulWidget {
  const CardStatsWidget({
    super.key,
    String? title,
    String? value,
    String? subValue,
    required this.action,
    this.borderColor,
    bool? showIcon,
    bool? largeText,
    this.description,
    bool? showDescription,
  })  : this.title = title ?? 'Calories',
        this.value = value ?? '1,205',
        this.subValue = subValue ?? 'Kcal',
        this.showIcon = showIcon ?? false,
        this.largeText = largeText ?? true,
        this.showDescription = showDescription ?? false;

  final String title;
  final String value;
  final String subValue;
  final Future Function()? action;
  final Color? borderColor;
  final bool showIcon;
  final bool largeText;
  final String? description;
  final bool showDescription;

  @override
  State<CardStatsWidget> createState() => _CardStatsWidgetState();
}

class _CardStatsWidgetState extends State<CardStatsWidget>
    with TickerProviderStateMixin {
  late CardStatsModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardStatsModel());

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
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.8, 0.8),
            end: Offset(1.0, 1.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0, 1.396),
            end: Offset(0, 0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 40.0),
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
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        await widget.action?.call();
      },
      child: Container(
        width: double.infinity,
        constraints: BoxConstraints(
          maxWidth: 400.0,
        ),
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: valueOrDefault<Color>(
              widget.borderColor,
              FlutterFlowTheme.of(context).alternate,
            ),
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.title,
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Figtree',
                          letterSpacing: 0.0,
                        ),
                  ),
                  if (widget.showIcon)
                    Icon(
                      Icons.chevron_right_rounded,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                ],
              ),
              if (widget.largeText)
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: widget.value,
                          style: FlutterFlowTheme.of(context)
                              .displayMedium
                              .override(
                                fontFamily: 'Figtree',
                                letterSpacing: 0.0,
                              ),
                        ),
                        TextSpan(
                          text: widget.subValue,
                          style: TextStyle(),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Figtree',
                            letterSpacing: 0.0,
                          ),
                    ),
                    textAlign: TextAlign.start,
                    maxLines: 1,
                  ),
                ),
              if (!widget.largeText)
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: widget.value,
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Figtree',
                                letterSpacing: 0.0,
                              ),
                        ),
                        TextSpan(
                          text: widget.subValue,
                          style: TextStyle(),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Figtree',
                            letterSpacing: 0.0,
                          ),
                    ),
                    textAlign: TextAlign.start,
                    maxLines: 1,
                  ),
                ),
              if (valueOrDefault<bool>(
                widget.showDescription,
                false,
              ))
                Text(
                  valueOrDefault<String>(
                    widget.description,
                    'Subtext',
                  ),
                  style: FlutterFlowTheme.of(context).bodySmall.override(
                        fontFamily: 'Figtree',
                        color: FlutterFlowTheme.of(context).success,
                        letterSpacing: 0.0,
                      ),
                ),
            ].divide(SizedBox(height: 8.0)),
          ),
        ),
      ),
    ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!);
  }
}
