import '/all_components/cards/card_image_title_sub/card_image_title_sub_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'card_activity_model.dart';
export 'card_activity_model.dart';

class CardActivityWidget extends StatefulWidget {
  const CardActivityWidget({
    super.key,
    this.icon,
    String? title,
    String? subTitle,
    bool? details,
    this.action,
  })  : this.title = title ?? 'Morning Routine',
        this.subTitle = subTitle ?? 'Productivity, Rest, Balance',
        this.details = details ?? false;

  final Widget? icon;
  final String title;
  final String subTitle;

  /// If this card contains more details for the user.
  final bool details;

  final Future Function()? action;

  @override
  State<CardActivityWidget> createState() => _CardActivityWidgetState();
}

class _CardActivityWidgetState extends State<CardActivityWidget>
    with TickerProviderStateMixin {
  late CardActivityModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardActivityModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
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
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.349, 0),
            end: Offset(0, 0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 12.0),
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
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          await widget.action?.call();
        },
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: FlutterFlowTheme.of(context).alternate,
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 36.0,
                      height: 36.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).accent4,
                        borderRadius: BorderRadius.circular(4.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).accent4,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(4.0),
                        child: widget.icon!,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.title,
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Figtree',
                                      letterSpacing: 0.0,
                                    ),
                          ),
                          Text(
                            widget.subTitle,
                            style: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  fontFamily: 'Figtree',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ].divide(SizedBox(height: 4.0)),
                      ),
                    ),
                    Icon(
                      FFIcons.kdotsVertical,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 16.0,
                    ),
                  ].divide(SizedBox(width: 12.0)),
                ),
              ),
              if (valueOrDefault<bool>(
                widget.details,
                false,
              ))
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12.0),
                    bottomRight: Radius.circular(12.0),
                    topLeft: Radius.circular(0.0),
                    topRight: Radius.circular(0.0),
                  ),
                  child: Container(
                    height: 170.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(12.0),
                        topLeft: Radius.circular(0.0),
                        topRight: Radius.circular(0.0),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Divider(
                          height: 2.0,
                          thickness: 1.0,
                          color: FlutterFlowTheme.of(context).alternate,
                        ),
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.fromLTRB(
                              12.0,
                              0,
                              12.0,
                              0,
                            ),
                            scrollDirection: Axis.horizontal,
                            children: [
                              wrapWithModel(
                                model: _model.cardImageTitleSubModel1,
                                updateCallback: () => safeSetState(() {}),
                                child: CardImageTitleSubWidget(
                                  title: 'Situps',
                                  subTitle: '1 Min | Goal 49 reps',
                                  image:
                                      'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwyfHx3b3Jrb3V0fGVufDB8fHx8MTczODI2NTY4MHww&ixlib=rb-4.0.3&q=80&w=400',
                                  width: 150.0,
                                ),
                              ),
                              wrapWithModel(
                                model: _model.cardImageTitleSubModel2,
                                updateCallback: () => safeSetState(() {}),
                                child: CardImageTitleSubWidget(
                                  title: 'Pushups',
                                  subTitle: '1 Min | Goal 60 reps',
                                  image:
                                      'https://images.unsplash.com/photo-1509411627497-1f19a8db1854?w=900&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHB1c2h1cHN8ZW58MHx8MHx8fDA%3D',
                                  width: 150.0,
                                ),
                              ),
                              wrapWithModel(
                                model: _model.cardImageTitleSubModel3,
                                updateCallback: () => safeSetState(() {}),
                                child: CardImageTitleSubWidget(
                                  title: 'Run',
                                  subTitle: '1.5 miles',
                                  image:
                                      'https://images.unsplash.com/photo-1541534741688-6078c6bfb5c5?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxN3x8d29ya291dHxlbnwwfHx8fDE3MzgyNjU2ODB8MA&ixlib=rb-4.0.3&q=80&w=400',
                                  width: 150.0,
                                ),
                              ),
                            ].divide(SizedBox(width: 8.0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
    );
  }
}
