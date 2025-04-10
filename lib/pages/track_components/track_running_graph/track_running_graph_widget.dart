import '/all_components/ui_components/ui_header_sub/ui_header_sub_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/workouts/card_stats/card_stats_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:math' as math;
import 'package:n_c_u_i_web_template_01_ls0zpd/app_state.dart'
    as n_c_u_i_web_template_01_ls0zpd_app_state;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'track_running_graph_model.dart';
export 'track_running_graph_model.dart';

class TrackRunningGraphWidget extends StatefulWidget {
  const TrackRunningGraphWidget({super.key});

  @override
  State<TrackRunningGraphWidget> createState() =>
      _TrackRunningGraphWidgetState();
}

class _TrackRunningGraphWidgetState extends State<TrackRunningGraphWidget>
    with TickerProviderStateMixin {
  late TrackRunningGraphModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrackRunningGraphModel());

    animationsMap.addAll({
      'chartOnPageLoadAnimation1': AnimationInfo(
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
            begin: Offset(0.0, 100.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'chartOnPageLoadAnimation2': AnimationInfo(
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
            begin: Offset(0.0, 100.0),
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
    context.watch<FFAppState>();
    context.watch<n_c_u_i_web_template_01_ls0zpd_app_state.FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        width: double.infinity,
        constraints: BoxConstraints(
          maxWidth: 770.0,
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
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 8.0),
              child: wrapWithModel(
                model: _model.uiHeaderSubModel,
                updateCallback: () => safeSetState(() {}),
                child: UiHeaderSubWidget(
                  title: 'Running Activity',
                  subtitle:
                      'Below is your running history, these runs have been associated with a PFT workout.',
                  header: false,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              child: FlutterFlowChoiceChips(
                options: [ChipData('PFT Runs'), ChipData('All Runs')],
                onChanged: (val) async {
                  safeSetState(
                      () => _model.choiceChipsValue = val?.firstOrNull);
                  if (_model.choiceChipsValue == 'PFT Runs') {
                    // next_page
                    await _model.pageViewController?.animateToPage(
                      0,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  } else {
                    // previous_page
                    await _model.pageViewController?.animateToPage(
                      1,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  }
                },
                selectedChipStyle: ChipStyle(
                  backgroundColor: FlutterFlowTheme.of(context).primaryText30,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Figtree',
                        letterSpacing: 0.0,
                      ),
                  iconColor: FlutterFlowTheme.of(context).primaryText,
                  iconSize: 18.0,
                  labelPadding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                  elevation: 0.0,
                  borderColor: FlutterFlowTheme.of(context).primaryText,
                  borderWidth: 2.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                unselectedChipStyle: ChipStyle(
                  backgroundColor:
                      FlutterFlowTheme.of(context).secondaryBackground,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Figtree',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        letterSpacing: 0.0,
                      ),
                  iconColor: FlutterFlowTheme.of(context).secondaryText,
                  iconSize: 18.0,
                  labelPadding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
                  elevation: 0.0,
                  borderColor: FlutterFlowTheme.of(context).alternate,
                  borderWidth: 1.0,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                chipSpacing: 8.0,
                rowSpacing: 8.0,
                multiselect: false,
                initialized: _model.choiceChipsValue != null,
                alignment: WrapAlignment.start,
                controller: _model.choiceChipsValueController ??=
                    FormFieldController<List<String>>(
                  [_model.pageViewCurrentIndex == 0 ? 'PFT Runs' : 'All Runs'],
                ),
                wrapped: false,
              ),
            ),
            Container(
              width: double.infinity,
              height: 500.0,
              child: Stack(
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                    child: PageView(
                      controller: _model.pageViewController ??=
                          PageController(initialPage: 0),
                      onPageChanged: (_) => safeSetState(() {}),
                      scrollDirection: Axis.horizontal,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          height: double.infinity,
                                          child: FlutterFlowLineChart(
                                            data: [
                                              FFLineChartData(
                                                xData: functions.getLast7Days(
                                                    getCurrentTimestamp)!,
                                                yData: FFAppState()
                                                    .dummyRunningData,
                                                settings: LineChartBarData(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .success,
                                                  barWidth: 2.0,
                                                  belowBarData: BarAreaData(
                                                    show: true,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success30,
                                                  ),
                                                ),
                                              )
                                            ],
                                            chartStylingInfo: ChartStylingInfo(
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .overlay0,
                                              showGrid: true,
                                              showBorder: false,
                                            ),
                                            axisBounds: AxisBounds(
                                              minY: 6.0,
                                              maxY: 12.0,
                                            ),
                                            xAxisLabelInfo: AxisLabelInfo(
                                              reservedSize: 32.0,
                                            ),
                                            yAxisLabelInfo: AxisLabelInfo(
                                              title: 'Avg. Pace',
                                              titleTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .override(
                                                        fontFamily: 'Figtree',
                                                        letterSpacing: 0.0,
                                                      ),
                                              reservedSize: 40.0,
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'chartOnPageLoadAnimation1']!),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, -1.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 40.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  width: 100.0,
                                                  height: 2.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success600,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(2.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(2.0),
                                                      topRight:
                                                          Radius.circular(0.0),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Transform.rotate(
                                                angle: 45.0 * (math.pi / 180),
                                                child: Container(
                                                  width: 12.0,
                                                  height: 12.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success600,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2.0),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .success600,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 52.0,
                                                height: 2.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .success600,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(2.0),
                                                    topLeft:
                                                        Radius.circular(0.0),
                                                    topRight:
                                                        Radius.circular(2.0),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, -1.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 84.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 52.0,
                                                height: 2.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(2.0),
                                                    bottomRight:
                                                        Radius.circular(0.0),
                                                    topLeft:
                                                        Radius.circular(2.0),
                                                    topRight:
                                                        Radius.circular(0.0),
                                                  ),
                                                ),
                                              ),
                                              Transform.rotate(
                                                angle: 45.0 * (math.pi / 180),
                                                child: Container(
                                                  width: 12.0,
                                                  height: 12.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2.0),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  width: 100.0,
                                                  height: 2.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(2.0),
                                                      topLeft:
                                                          Radius.circular(0.0),
                                                      topRight:
                                                          Radius.circular(2.0),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 24.0,
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 4.0, 12.0, 4.0),
                                child: Builder(
                                  builder: (context) {
                                    final last7Days = functions
                                            .getLast7Days(getCurrentTimestamp)
                                            ?.sortedList(
                                                keyOf: (e) =>
                                                    dateTimeFormat("yMd", e),
                                                desc: false)
                                            .toList() ??
                                        [];

                                    return Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: List.generate(last7Days.length,
                                          (last7DaysIndex) {
                                        final last7DaysItem =
                                            last7Days[last7DaysIndex];
                                        return Text(
                                          valueOrDefault<String>(
                                            dateTimeFormat("Md", last7DaysItem),
                                            '--',
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .override(
                                                fontFamily: 'Figtree',
                                                letterSpacing: 0.0,
                                              ),
                                        );
                                      }).divide(SizedBox(width: 12.0)),
                                    );
                                  },
                                ),
                              ),
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 8.0, 12.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .accent2,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Transform.rotate(
                                                  angle: 45.0 * (math.pi / 180),
                                                  child: Container(
                                                    width: 12.0,
                                                    height: 12.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2.0),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Avg. Pace',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Figtree',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ].divide(SizedBox(width: 8.0)),
                                            ),
                                          ].divide(SizedBox(height: 8.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .success630,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .success630,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Transform.rotate(
                                                  angle: 45.0 * (math.pi / 180),
                                                  child: Container(
                                                    width: 12.0,
                                                    height: 12.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .success600,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2.0),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success600,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Goal Pace',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Figtree',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ].divide(SizedBox(width: 8.0)),
                                            ),
                                          ].divide(SizedBox(height: 8.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 12.0)),
                              ),
                            ),
                            Flex(
                              direction: Axis.horizontal,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: wrapWithModel(
                                    model: _model.cardStatsModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CardStatsWidget(
                                      title: 'Avg. Pace',
                                      value: '9:34',
                                      subValue: ' /per mile ',
                                      borderColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      showIcon: false,
                                      largeText: false,
                                      action: () async {},
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: wrapWithModel(
                                    model: _model.cardStatsModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CardStatsWidget(
                                      title: 'Goal Pace',
                                      value: '9:12',
                                      subValue: ' /per mile ',
                                      borderColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      showIcon: false,
                                      largeText: false,
                                      action: () async {},
                                    ),
                                  ),
                                ),
                              ].divide(true
                                  ? SizedBox(width: 12.0)
                                  : SizedBox(height: 12.0)),
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                            Flex(
                              direction: Axis.horizontal,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: wrapWithModel(
                                    model: _model.cardStatsModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CardStatsWidget(
                                      title: 'Avg. PFT',
                                      value: '51.5',
                                      subValue: ' /60',
                                      borderColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      showIcon: false,
                                      largeText: false,
                                      action: () async {},
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: wrapWithModel(
                                    model: _model.cardStatsModel4,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CardStatsWidget(
                                      title: 'Goal PFT',
                                      value: '57',
                                      subValue: ' /60',
                                      borderColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      showIcon: false,
                                      largeText: false,
                                      action: () async {},
                                    ),
                                  ),
                                ),
                              ].divide(true
                                  ? SizedBox(width: 12.0)
                                  : SizedBox(height: 12.0)),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          height: double.infinity,
                                          child: FlutterFlowLineChart(
                                            data: [
                                              FFLineChartData(
                                                xData: functions.getLast7Days(
                                                    getCurrentTimestamp)!,
                                                yData: FFAppState()
                                                    .dummyRunningData,
                                                settings: LineChartBarData(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .success,
                                                  barWidth: 2.0,
                                                  belowBarData: BarAreaData(
                                                    show: true,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success30,
                                                  ),
                                                ),
                                              )
                                            ],
                                            chartStylingInfo: ChartStylingInfo(
                                              backgroundColor:
                                                  FlutterFlowTheme.of(context)
                                                      .overlay0,
                                              showGrid: true,
                                              showBorder: false,
                                            ),
                                            axisBounds: AxisBounds(
                                              minY: 6.0,
                                              maxY: 12.0,
                                            ),
                                            xAxisLabelInfo: AxisLabelInfo(
                                              reservedSize: 32.0,
                                            ),
                                            yAxisLabelInfo: AxisLabelInfo(
                                              title: 'Avg. Pace',
                                              titleTextStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .labelSmall
                                                      .override(
                                                        fontFamily: 'Figtree',
                                                        letterSpacing: 0.0,
                                                      ),
                                              reservedSize: 40.0,
                                            ),
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'chartOnPageLoadAnimation2']!),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, -1.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 20.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  width: 100.0,
                                                  height: 2.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success600,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(2.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(2.0),
                                                      topRight:
                                                          Radius.circular(0.0),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Transform.rotate(
                                                angle: 45.0 * (math.pi / 180),
                                                child: Container(
                                                  width: 12.0,
                                                  height: 12.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .success600,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2.0),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .success600,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 52.0,
                                                height: 2.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .success600,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(2.0),
                                                    topLeft:
                                                        Radius.circular(0.0),
                                                    topRight:
                                                        Radius.circular(2.0),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, -1.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 64.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 52.0,
                                                height: 2.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondary,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(2.0),
                                                    bottomRight:
                                                        Radius.circular(0.0),
                                                    topLeft:
                                                        Radius.circular(2.0),
                                                    topRight:
                                                        Radius.circular(0.0),
                                                  ),
                                                ),
                                              ),
                                              Transform.rotate(
                                                angle: 45.0 * (math.pi / 180),
                                                child: Container(
                                                  width: 12.0,
                                                  height: 12.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2.0),
                                                    border: Border.all(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  width: 100.0,
                                                  height: 2.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondary,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(2.0),
                                                      topLeft:
                                                          Radius.circular(0.0),
                                                      topRight:
                                                          Radius.circular(2.0),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              height: 24.0,
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 4.0, 12.0, 4.0),
                                child: Builder(
                                  builder: (context) {
                                    final last7Days = functions
                                            .getLast7Days(getCurrentTimestamp)
                                            ?.sortedList(
                                                keyOf: (e) =>
                                                    dateTimeFormat("yMd", e),
                                                desc: false)
                                            .toList() ??
                                        [];

                                    return Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: List.generate(last7Days.length,
                                          (last7DaysIndex) {
                                        final last7DaysItem =
                                            last7Days[last7DaysIndex];
                                        return Text(
                                          valueOrDefault<String>(
                                            dateTimeFormat("Md", last7DaysItem),
                                            '--',
                                          ),
                                          textAlign: TextAlign.center,
                                          style: FlutterFlowTheme.of(context)
                                              .labelSmall
                                              .override(
                                                fontFamily: 'Figtree',
                                                letterSpacing: 0.0,
                                              ),
                                        );
                                      }).divide(SizedBox(width: 12.0)),
                                    );
                                  },
                                ),
                              ),
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 8.0, 12.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .accent2,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .accent2,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Transform.rotate(
                                                  angle: 45.0 * (math.pi / 180),
                                                  child: Container(
                                                    width: 12.0,
                                                    height: 12.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2.0),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondary,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Avg. Pace',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Figtree',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ].divide(SizedBox(width: 8.0)),
                                            ),
                                          ].divide(SizedBox(height: 8.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .success630,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .success630,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Transform.rotate(
                                                  angle: 45.0 * (math.pi / 180),
                                                  child: Container(
                                                    width: 12.0,
                                                    height: 12.0,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .success600,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2.0),
                                                      border: Border.all(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .success600,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  'Goal Pace',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodySmall
                                                      .override(
                                                        fontFamily: 'Figtree',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ].divide(SizedBox(width: 8.0)),
                                            ),
                                          ].divide(SizedBox(height: 8.0)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ].divide(SizedBox(width: 12.0)),
                              ),
                            ),
                            Flex(
                              direction: Axis.horizontal,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: wrapWithModel(
                                    model: _model.cardStatsModel5,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CardStatsWidget(
                                      title: 'Avg. Pace',
                                      value: '9:34',
                                      subValue: ' /per mile ',
                                      borderColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      showIcon: false,
                                      largeText: false,
                                      description: '-0:02s this week',
                                      showDescription: false,
                                      action: () async {},
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: wrapWithModel(
                                    model: _model.cardStatsModel6,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CardStatsWidget(
                                      title: 'Goal Pace',
                                      value: '9:12',
                                      subValue: ' /per mile ',
                                      borderColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      showIcon: false,
                                      largeText: false,
                                      description: '0:22s away from goal pace',
                                      showDescription: true,
                                      action: () async {},
                                    ),
                                  ),
                                ),
                              ].divide(true
                                  ? SizedBox(width: 12.0)
                                  : SizedBox(height: 12.0)),
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context).alternate,
                            ),
                            Flex(
                              direction: Axis.horizontal,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: wrapWithModel(
                                    model: _model.cardStatsModel7,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CardStatsWidget(
                                      title: 'Avg. PFT',
                                      value: '51.5',
                                      subValue: ' /60',
                                      borderColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      showIcon: false,
                                      largeText: false,
                                      action: () async {},
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: wrapWithModel(
                                    model: _model.cardStatsModel8,
                                    updateCallback: () => safeSetState(() {}),
                                    child: CardStatsWidget(
                                      title: 'Goal PFT',
                                      value: '57',
                                      subValue: ' /60',
                                      borderColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      showIcon: false,
                                      largeText: false,
                                      action: () async {},
                                    ),
                                  ),
                                ),
                              ].divide(true
                                  ? SizedBox(width: 12.0)
                                  : SizedBox(height: 12.0)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-1.0, 1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 16.0),
                      child: smooth_page_indicator.SmoothPageIndicator(
                        controller: _model.pageViewController ??=
                            PageController(initialPage: 0),
                        count: 2,
                        axisDirection: Axis.horizontal,
                        onDotClicked: (i) async {
                          await _model.pageViewController!.animateToPage(
                            i,
                            duration: Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                          safeSetState(() {});
                        },
                        effect: smooth_page_indicator.ExpandingDotsEffect(
                          expansionFactor: 2.0,
                          spacing: 8.0,
                          radius: 8.0,
                          dotWidth: 24.0,
                          dotHeight: 8.0,
                          dotColor:
                              FlutterFlowTheme.of(context).primaryBackground,
                          activeDotColor:
                              FlutterFlowTheme.of(context).alternate,
                          paintStyle: PaintingStyle.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ].addToEnd(SizedBox(height: 0.0)),
        ),
      ),
    );
  }
}
