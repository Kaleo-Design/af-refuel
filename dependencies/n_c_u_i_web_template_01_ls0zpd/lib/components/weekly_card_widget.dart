import '/components/trend_opacity_widget.dart';
import '/components/ui_elements/ui_title/ui_title_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'weekly_card_model.dart';
export 'weekly_card_model.dart';

class WeeklyCardWidget extends StatefulWidget {
  const WeeklyCardWidget({super.key});

  @override
  State<WeeklyCardWidget> createState() => _WeeklyCardWidgetState();
}

class _WeeklyCardWidgetState extends State<WeeklyCardWidget>
    with TickerProviderStateMixin {
  late WeeklyCardModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WeeklyCardModel());

    animationsMap.addAll({
      'progressBarOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.4, 0.4),
            end: Offset(1.0, 1.0),
          ),
        ],
      ),
      'progressBarOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.4, 0.4),
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
    context.watch<FFAppState>();

    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      curve: Curves.easeInOut,
      width: double.infinity,
      constraints: BoxConstraints(
        minHeight: 70.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).alternate,
          width: 1.0,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 0.0, 0.0),
            child: wrapWithModel(
              model: _model.uiTitleModel,
              updateCallback: () => safeSetState(() {}),
              child: UiTitleWidget(
                title: 'Weekly Goals',
                subTitle: 'Below is a summary of your team\'s activity.',
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircularPercentIndicator(
                  percent: 0.45,
                  radius: 55.0,
                  lineWidth: 12.0,
                  animation: true,
                  animateFromLastPercent: true,
                  progressColor: FlutterFlowTheme.of(context).primary,
                  backgroundColor: FlutterFlowTheme.of(context).accent1,
                  center: Text(
                    '45%',
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Figtree',
                          letterSpacing: 0.0,
                        ),
                  ),
                ).animateOnPageLoad(
                    animationsMap['progressBarOnPageLoadAnimation1']!),
                CircularPercentIndicator(
                  percent: 0.83,
                  radius: 55.0,
                  lineWidth: 12.0,
                  animation: true,
                  animateFromLastPercent: true,
                  progressColor: FlutterFlowTheme.of(context).secondary,
                  backgroundColor: FlutterFlowTheme.of(context).accent2,
                  center: Text(
                    '83%',
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Figtree',
                          letterSpacing: 0.0,
                        ),
                  ),
                ).animateOnPageLoad(
                    animationsMap['progressBarOnPageLoadAnimation2']!),
              ].divide(SizedBox(width: 16.0)),
            ),
          ),
          Divider(
            height: 8.0,
            thickness: 1.0,
            color: FlutterFlowTheme.of(context).alternate,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Activity Map',
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Plus Jakarta Sans',
                        letterSpacing: 0.0,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                  child: Text(
                    'Below is the outline of your weekly progress.',
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ].divide(SizedBox(height: 2.0)),
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(),
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Builder(
                builder: (context) {
                  final dates = FFAppState().months.toList();

                  return GridView.builder(
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 7,
                      crossAxisSpacing: 8.0,
                      mainAxisSpacing: 8.0,
                      childAspectRatio: 1.5,
                    ),
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: dates.length,
                    itemBuilder: (context, datesIndex) {
                      final datesItem = dates[datesIndex];
                      return TrendOpacityWidget(
                        key: Key('Keyw5b_${datesIndex}_of_${dates.length}'),
                        activity: datesItem,
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
