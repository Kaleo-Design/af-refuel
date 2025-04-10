import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'list_swipable02_model.dart';
export 'list_swipable02_model.dart';

class ListSwipable02Widget extends StatefulWidget {
  const ListSwipable02Widget({
    super.key,
    String? name,
    required this.description,
    required this.image,
    required this.indicatorRight,
    this.icon,
    required this.iconAction,
  }) : this.name = name ?? 'Product One';

  final String name;
  final String? description;
  final String? image;
  final String? indicatorRight;
  final Widget? icon;
  final Future Function()? iconAction;

  @override
  State<ListSwipable02Widget> createState() => _ListSwipable02WidgetState();
}

class _ListSwipable02WidgetState extends State<ListSwipable02Widget>
    with TickerProviderStateMixin {
  late ListSwipable02Model _model;

  var hasContainerTriggered = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListSwipable02Model());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.swipable = false;
      safeSetState(() {});
    });

    animationsMap.addAll({
      'iconOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.bounceOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.3, 1.3),
          ),
        ],
      ),
      'transformOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(0.8, 0.8),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 900.0.ms,
            begin: 1.0,
            end: 0.7,
          ),
        ],
      ),
      'containerOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: null,
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
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0),
      child: Container(
        height: 100.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Container(
          width: double.infinity,
          height: 100.0,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primary,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          if (_model.swipable == true) {
                            if (animationsMap['iconOnActionTriggerAnimation'] !=
                                null) {
                              await animationsMap[
                                      'iconOnActionTriggerAnimation']!
                                  .controller
                                  .forward(from: 0.0)
                                  .whenComplete(animationsMap[
                                          'iconOnActionTriggerAnimation']!
                                      .controller
                                      .reverse);
                            }
                            // update_swipable_to_false
                            _model.swipable = false;
                            safeSetState(() {});
                            // reverse_Scale
                            if (animationsMap[
                                    'transformOnActionTriggerAnimation'] !=
                                null) {
                              animationsMap[
                                      'transformOnActionTriggerAnimation']!
                                  .controller
                                  .reverse();
                            }
                            // remove_list_location
                            if (animationsMap[
                                    'containerOnActionTriggerAnimation'] !=
                                null) {
                              animationsMap[
                                      'containerOnActionTriggerAnimation']!
                                  .controller
                                  .reverse();
                            }
                          }
                          await widget.iconAction?.call();
                        },
                        child: widget!.icon!,
                      ).animateOnActionTrigger(
                        animationsMap['iconOnActionTriggerAnimation']!,
                      ),
                    ]
                        .divide(SizedBox(width: 12.0))
                        .addToEnd(SizedBox(width: 16.0)),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Transform.scale(
                  scaleX: 1.0,
                  scaleY: 1.0,
                  child: Opacity(
                    opacity: _model.swipable ? 0.8 : 1.0,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
                      child: GestureDetector(
                        onHorizontalDragEnd: (details) async {
                          if (_model.offsetX! > -100.0) {
                            ScaffoldMessenger.of(context).clearSnackBars();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'You haven\'t deleted the item!',
                                  style: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color:
                                            FlutterFlowTheme.of(context).info,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                duration: Duration(milliseconds: 3000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                          } else {
                            // animateOffScreen
                            if (animationsMap[
                                    'transformOnActionTriggerAnimation'] !=
                                null) {
                              await animationsMap[
                                      'transformOnActionTriggerAnimation']!
                                  .controller
                                  .forward(from: 0.0)
                                  .whenComplete(animationsMap[
                                          'transformOnActionTriggerAnimation']!
                                      .controller
                                      .reverse);
                            }
                          }

                          // reset_animation_to_zero
                          _model.offsetX = 0.0;
                          safeSetState(() {});
                        },
                        onHorizontalDragUpdate: (details) async {
                          // updateOffsetX_with_swipe
                          _model.offsetX =
                              (double offsetX, double currentOffset) {
                            return offsetX = offsetX + currentOffset;
                          }(details.delta.dx, _model.offsetX!);
                          safeSetState(() {});
                          if (animationsMap[
                                  'containerOnActionTriggerAnimation'] !=
                              null) {
                            safeSetState(() => hasContainerTriggered = true);
                            SchedulerBinding.instance.addPostFrameCallback(
                                (_) async => await animationsMap[
                                        'containerOnActionTriggerAnimation']!
                                    .controller
                                    .forward(from: 0.0));
                          }
                        },
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius:
                                BorderRadius.circular(valueOrDefault<double>(
                              _model.swipable ? 8.0 : 0.0,
                              0.0,
                            )),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 8.0, 12.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 44.0,
                                  height: 44.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).accent1,
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: CachedNetworkImage(
                                        fadeInDuration:
                                            Duration(milliseconds: 300),
                                        fadeOutDuration:
                                            Duration(milliseconds: 300),
                                        imageUrl: widget!.image!,
                                        width: 40.0,
                                        height: 40.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          widget!.name,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 4.0, 0.0, 0.0),
                                          child: Text(
                                            valueOrDefault<String>(
                                              widget!.description,
                                              'Amazing Product',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    widget!.indicatorRight,
                                    '0',
                                  ),
                                  textAlign: TextAlign.end,
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ).animateOnActionTrigger(
                        animationsMap['containerOnActionTriggerAnimation']!,
                        hasBeenTriggered: hasContainerTriggered,
                        effects: [
                          MoveEffect(
                            curve: Curves.linear,
                            delay: 0.0.ms,
                            duration: 900.0.ms,
                            begin: Offset(0.0, 0.0),
                            end: Offset(
                                valueOrDefault<double>(
                                  _model.offsetX,
                                  0.0,
                                ),
                                0.0),
                          ),
                        ],
                      ),
                    ),
                  ),
                ).animateOnActionTrigger(
                  animationsMap['transformOnActionTriggerAnimation']!,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
