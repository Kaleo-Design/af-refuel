import '/all_components/ui_components/ui_header_sub/ui_header_sub_widget.dart';
import '/all_components/ui_components/ui_legend_custom/ui_legend_custom_widget.dart';
import '/all_components/ui_components/ui_tag/ui_tag_widget.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/workouts/card_stats/card_stats_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:n_c_u_i_web_template_01_ls0zpd/app_state.dart'
    as n_c_u_i_web_template_01_ls0zpd_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'track_sleep_stat_table_model.dart';
export 'track_sleep_stat_table_model.dart';

class TrackSleepStatTableWidget extends StatefulWidget {
  const TrackSleepStatTableWidget({super.key});

  @override
  State<TrackSleepStatTableWidget> createState() =>
      _TrackSleepStatTableWidgetState();
}

class _TrackSleepStatTableWidgetState extends State<TrackSleepStatTableWidget>
    with TickerProviderStateMixin {
  late TrackSleepStatTableModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrackSleepStatTableModel());

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
    final chartPieChartColorsList2 = [
      FlutterFlowTheme.of(context).primary700,
      FlutterFlowTheme.of(context).primary500,
      FlutterFlowTheme.of(context).primary300,
      FlutterFlowTheme.of(context).alternateThree400
    ];
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
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: wrapWithModel(
                          model: _model.uiHeaderSubModel,
                          updateCallback: () => safeSetState(() {}),
                          child: UiHeaderSubWidget(
                            title: 'Your Sleep Levels',
                            subtitle:
                                'Below is your avg. sleep the past 7 days.',
                            header: false,
                          ),
                        ),
                      ),
                      wrapWithModel(
                        model: _model.uiTagModel,
                        updateCallback: () => safeSetState(() {}),
                        child: UiTagWidget(
                          title: 'Good',
                          accentColor: FlutterFlowTheme.of(context).success30,
                          primaryColor: FlutterFlowTheme.of(context).success,
                          height: 24.0,
                        ),
                      ),
                    ].divide(SizedBox(width: 12.0)),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: Container(
                            width: 220.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(0.0),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 8.0),
                              child: Container(
                                width: double.infinity,
                                height: 150.0,
                                child: FlutterFlowBarChart(
                                  barData: [
                                    FFBarChartData(
                                      yData: FFAppState()
                                          .chartValue
                                          .map((e) => e.value)
                                          .toList(),
                                      color: FlutterFlowTheme.of(context)
                                          .primary700,
                                    ),
                                    FFBarChartData(
                                      yData: List.generate(
                                          random_data.randomInteger(7, 7),
                                          (index) => random_data.randomInteger(
                                              120, 350)),
                                      color: FlutterFlowTheme.of(context)
                                          .primary500,
                                    ),
                                    FFBarChartData(
                                      yData: List.generate(
                                          random_data.randomInteger(7, 7),
                                          (index) => random_data.randomInteger(
                                              60, 140)),
                                      color: FlutterFlowTheme.of(context)
                                          .primary300,
                                    ),
                                    FFBarChartData(
                                      yData: List.generate(
                                          random_data.randomInteger(7, 7),
                                          (index) => random_data.randomInteger(
                                              30, 60)),
                                      color: FlutterFlowTheme.of(context)
                                          .alternateThree400,
                                    )
                                  ],
                                  xLabels: FFAppState()
                                      .chartValue
                                      .map((e) => e.index)
                                      .toList()
                                      .map((e) => e.toString())
                                      .toList(),
                                  stacked: true,
                                  barWidth: 12.0,
                                  barBorderRadius: BorderRadius.circular(4.0),
                                  groupSpace: 8.0,
                                  alignment: BarChartAlignment.spaceAround,
                                  chartStylingInfo: ChartStylingInfo(
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).overlay0,
                                    showGrid: true,
                                    showBorder: false,
                                  ),
                                  axisBounds: AxisBounds(),
                                  xAxisLabelInfo: AxisLabelInfo(
                                    reservedSize: 28.0,
                                  ),
                                  yAxisLabelInfo: AxisLabelInfo(
                                    reservedSize: 42.0,
                                  ),
                                ),
                              ).animateOnPageLoad(
                                  animationsMap['chartOnPageLoadAnimation1']!),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          wrapWithModel(
                            model: _model.uiLegendCustomModel1,
                            updateCallback: () => safeSetState(() {}),
                            updateOnChange: true,
                            child: UiLegendCustomWidget(
                              piller: PillerStruct(
                                primaryColor: FlutterFlowTheme.of(context)
                                    .alternateThree400,
                                accent1: FlutterFlowTheme.of(context)
                                    .alternateThree430,
                                pillar: 'Awake',
                              ),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.uiLegendCustomModel2,
                            updateCallback: () => safeSetState(() {}),
                            updateOnChange: true,
                            child: UiLegendCustomWidget(
                              piller: PillerStruct(
                                primaryColor:
                                    FlutterFlowTheme.of(context).primary300,
                                accent1:
                                    FlutterFlowTheme.of(context).primary330,
                                pillar: 'REM',
                              ),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.uiLegendCustomModel3,
                            updateCallback: () => safeSetState(() {}),
                            updateOnChange: true,
                            child: UiLegendCustomWidget(
                              piller: PillerStruct(
                                primaryColor:
                                    FlutterFlowTheme.of(context).primary500,
                                accent1:
                                    FlutterFlowTheme.of(context).primary530,
                                pillar: 'Core',
                              ),
                            ),
                          ),
                          wrapWithModel(
                            model: _model.uiLegendCustomModel4,
                            updateCallback: () => safeSetState(() {}),
                            updateOnChange: true,
                            child: UiLegendCustomWidget(
                              piller: PillerStruct(
                                primaryColor:
                                    FlutterFlowTheme.of(context).primary700,
                                accent1:
                                    FlutterFlowTheme.of(context).primary730,
                                pillar: 'Deep',
                              ),
                            ),
                          ),
                        ].divide(SizedBox(height: 8.0)),
                      ),
                    ),
                  ]
                      .divide(SizedBox(width: 12.0))
                      .addToEnd(SizedBox(width: 12.0)),
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
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Avg Sleep',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: RichText(
                                    textScaler:
                                        MediaQuery.of(context).textScaler,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '7',
                                          style: FlutterFlowTheme.of(context)
                                              .displayMedium
                                              .override(
                                                fontFamily: 'Figtree',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        TextSpan(
                                          text: ' hr',
                                          style: TextStyle(),
                                        )
                                      ],
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Figtree',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    textAlign: TextAlign.start,
                                    maxLines: 1,
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: RichText(
                                    textScaler:
                                        MediaQuery.of(context).textScaler,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '32',
                                          style: FlutterFlowTheme.of(context)
                                              .displayMedium
                                              .override(
                                                fontFamily: 'Figtree',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        TextSpan(
                                          text: ' min',
                                          style: TextStyle(),
                                        )
                                      ],
                                      style: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Figtree',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    textAlign: TextAlign.start,
                                    maxLines: 1,
                                  ),
                                ),
                              ].divide(SizedBox(width: 8.0)),
                            ),
                          ].divide(SizedBox(height: 8.0)),
                        ),
                      ),
                    ),
                    Expanded(
                      child: wrapWithModel(
                        model: _model.cardStatsModel,
                        updateCallback: () => safeSetState(() {}),
                        child: CardStatsWidget(
                          title: 'Sleep Quality',
                          value: '8.2',
                          subValue: '/10',
                          borderColor:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          showIcon: false,
                          largeText: true,
                          showDescription: false,
                          action: () async {},
                        ),
                      ),
                    ),
                  ].divide(
                      true ? SizedBox(width: 12.0) : SizedBox(height: 12.0)),
                ),
                Divider(
                  height: 1.0,
                  thickness: 1.0,
                  color: FlutterFlowTheme.of(context).alternate,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                  child: Flex(
                    direction: Axis.horizontal,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Last Night',
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Figtree',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '7',
                                            style: FlutterFlowTheme.of(context)
                                                .displayMedium
                                                .override(
                                                  fontFamily: 'Figtree',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          TextSpan(
                                            text: ' hr',
                                            style: TextStyle(),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Figtree',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      textAlign: TextAlign.start,
                                      maxLines: 1,
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: '56',
                                            style: FlutterFlowTheme.of(context)
                                                .displayMedium
                                                .override(
                                                  fontFamily: 'Figtree',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          TextSpan(
                                            text: ' min',
                                            style: TextStyle(),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Figtree',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      textAlign: TextAlign.start,
                                      maxLines: 1,
                                    ),
                                  ),
                                ].divide(SizedBox(width: 8.0)),
                              ),
                              Text(
                                '+ 24m more than usual',
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: 'Figtree',
                                      color:
                                          FlutterFlowTheme.of(context).success,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ].divide(SizedBox(height: 8.0)),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 140.0,
                          child: Stack(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            children: [
                              Container(
                                width: 140.0,
                                height: 140.0,
                                child: FlutterFlowPieChart(
                                  data: FFPieChartData(
                                    values: List.generate(
                                        random_data.randomInteger(4, 4),
                                        (index) =>
                                            random_data.randomInteger(60, 140)),
                                    colors: chartPieChartColorsList2,
                                    radius: [12.0],
                                  ),
                                  donutHoleRadius: 48.0,
                                  donutHoleColor: Colors.transparent,
                                  sectionLabelStyle:
                                      FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            fontFamily: 'Figtree',
                                            letterSpacing: 0.0,
                                          ),
                                ),
                              ).animateOnPageLoad(
                                  animationsMap['chartOnPageLoadAnimation2']!),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '8.4',
                                    style: FlutterFlowTheme.of(context)
                                        .displaySmall
                                        .override(
                                          fontFamily: 'Figtree',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Text(
                                    'Sleep Score',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .labelSmall
                                        .override(
                                          fontFamily: 'Figtree',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ].addToEnd(SizedBox(height: 8.0)),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ].divide(
                        true ? SizedBox(width: 12.0) : SizedBox(height: 12.0)),
                  ),
                ),
              ].addToEnd(SizedBox(height: 0.0)),
            ),
            Divider(
              height: 1.0,
              thickness: 1.0,
              color: FlutterFlowTheme.of(context).alternate,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 8.0, 16.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: 20.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Last Night',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Figtree',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      'Avg.',
                      style: FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Figtree',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ].divide(SizedBox(width: 8.0)),
              ),
            ),
            ListView(
              padding: EdgeInsets.zero,
              primary: false,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'Asleep',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '7h 16m',
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '7h 32m',
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ].divide(SizedBox(width: 8.0)),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'Awake',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '24m',
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '32m',
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ].divide(SizedBox(width: 8.0)),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'Wokes',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '3',
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '5',
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ].divide(SizedBox(width: 8.0)),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'REM',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '1h 42m',
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '1h 32m',
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ].divide(SizedBox(width: 8.0)),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'Deep',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '4h 32m',
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '3h 59m',
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ].divide(SizedBox(width: 8.0)),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Text(
                          'Core',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '1h 02m',
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          '1h 6m',
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Figtree',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ].divide(SizedBox(width: 8.0)),
                  ),
                ),
              ].divide(SizedBox(height: 4.0)),
            ),
          ]
              .divide(SizedBox(height: 5.0))
              .addToStart(SizedBox(height: 12.0))
              .addToEnd(SizedBox(height: 16.0)),
        ),
      ),
    );
  }
}
