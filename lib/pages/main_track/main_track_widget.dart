import '/all_components/backgrounds/background_image/background_image_widget.dart';
import '/all_components/nav/nav_custom/nav_custom_widget.dart';
import '/all_components/nav/nav_header/nav_header_widget.dart';
import '/all_components/ui_components/ui_header_sub/ui_header_sub_widget.dart';
import '/all_components/ui_components/ui_legend_custom/ui_legend_custom_widget.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/track_components/track_fitness_stat_table/track_fitness_stat_table_widget.dart';
import '/pages/track_components/track_overview_donut/track_overview_donut_widget.dart';
import '/pages/track_components/track_running_graph/track_running_graph_widget.dart';
import '/pages/track_components/track_sleep_stat_table/track_sleep_stat_table_widget.dart';
import '/pages/track_components/track_v_o2_max_graph/track_v_o2_max_graph_widget.dart';
import '/pages/workouts/card_stats/card_stats_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import '/index.dart';
import 'package:n_c_u_i_web_template_01_ls0zpd/app_state.dart'
    as n_c_u_i_web_template_01_ls0zpd_app_state;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'main_track_model.dart';
export 'main_track_model.dart';

class MainTrackWidget extends StatefulWidget {
  const MainTrackWidget({super.key});

  static String routeName = 'main_track';
  static String routePath = '/mainTrack';

  @override
  State<MainTrackWidget> createState() => _MainTrackWidgetState();
}

class _MainTrackWidgetState extends State<MainTrackWidget>
    with TickerProviderStateMixin {
  late MainTrackModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainTrackModel());

    animationsMap.addAll({
      'rowOnPageLoadAnimation': AnimationInfo(
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
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: Offset(40.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'uiLegendCustomOnPageLoadAnimation': AnimationInfo(
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
        ],
      ),
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
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    context.watch<n_c_u_i_web_template_01_ls0zpd_app_state.FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: Stack(
          children: [
            wrapWithModel(
              model: _model.backgroundImageModel,
              updateCallback: () => safeSetState(() {}),
              updateOnChange: true,
              child: BackgroundImageWidget(
                color: CurrentMood.one,
                borderRadius: 0.0,
                showOverlay: false,
              ),
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  wrapWithModel(
                    model: _model.navHeaderModel,
                    updateCallback: () => safeSetState(() {}),
                    updateOnChange: true,
                    child: NavHeaderWidget(
                      progress: 0.4,
                      progressBG: FlutterFlowTheme.of(context).accent1,
                      progressColor: FlutterFlowTheme.of(context).primary,
                      selectedDate: getCurrentTimestamp,
                      showDarkMode: false,
                      title: dateTimeFormat("MMMEd", getCurrentTimestamp),
                      headerType: HeaderOptions.Title,
                      actionIcon: Icon(
                        FFIcons.kmessageChatSquare,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 20.0,
                      ),
                      action: () async {
                        context.pushNamed(
                          MainChatWidget.routeName,
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.bottomToTop,
                              duration: Duration(milliseconds: 300),
                            ),
                          },
                        );
                      },
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          wrapWithModel(
                            model: _model.trackOverviewDonutModel,
                            updateCallback: () => safeSetState(() {}),
                            child: TrackOverviewDonutWidget(),
                          ),
                          Container(
                            width: double.infinity,
                            height: 70.0,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  FlutterFlowTheme.of(context).overlay0,
                                  FlutterFlowTheme.of(context)
                                      .secondaryBackground
                                ],
                                stops: [0.0, 1.0],
                                begin: AlignmentDirectional(0.0, -1.0),
                                end: AlignmentDirectional(0, 1.0),
                              ),
                            ),
                            child: Builder(
                              builder: (context) {
                                final pillars = FFAppState().pillars.toList();

                                return SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: List.generate(pillars.length,
                                            (pillarsIndex) {
                                      final pillarsItem = pillars[pillarsIndex];
                                      return InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          FFAppState().selectedPillar =
                                              pillarsItem;
                                          safeSetState(() {});
                                        },
                                        child: wrapWithModel(
                                          model: _model.uiLegendCustomModels1
                                              .getModel(
                                            pillarsIndex.toString(),
                                            pillarsIndex,
                                          ),
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          updateOnChange: true,
                                          child: UiLegendCustomWidget(
                                            key: Key(
                                              'Keyuqc_${pillarsIndex.toString()}',
                                            ),
                                            piller: pillarsItem,
                                          ),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'uiLegendCustomOnPageLoadAnimation']!);
                                    })
                                        .divide(SizedBox(width: 8.0))
                                        .addToStart(SizedBox(width: 16.0))
                                        .addToEnd(SizedBox(width: 16.0)),
                                  ),
                                ).animateOnPageLoad(
                                    animationsMap['rowOnPageLoadAnimation']!);
                              },
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Builder(
                              builder: (context) {
                                if (FFAppState().selectedPillar.pillar ==
                                    'Sleep') {
                                  return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      wrapWithModel(
                                        model: _model.trackSleepStatTableModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TrackSleepStatTableWidget(),
                                      ),
                                    ]
                                        .divide(SizedBox(height: 12.0))
                                        .addToEnd(SizedBox(height: 130.0)),
                                  );
                                } else if (FFAppState().selectedPillar.pillar ==
                                    'Fitness') {
                                  return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        child: AnimatedContainer(
                                          duration: Duration(milliseconds: 200),
                                          curve: Curves.easeInOut,
                                          width: double.infinity,
                                          constraints: BoxConstraints(
                                            maxWidth: 770.0,
                                          ),
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 12.0, 12.0, 0.0),
                                                child: wrapWithModel(
                                                  model:
                                                      _model.uiHeaderSubModel1,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: UiHeaderSubWidget(
                                                    title:
                                                        'Your recent PFT Workouts',
                                                    subtitle:
                                                        'Your last 7 workouts are below.',
                                                    header: false,
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  8.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                        child: Container(
                                                          width: 230.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0.0),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        8.0,
                                                                        0.0,
                                                                        8.0),
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              height: 150.0,
                                                              child:
                                                                  FlutterFlowBarChart(
                                                                barData: [
                                                                  FFBarChartData(
                                                                    yData: FFAppState()
                                                                        .chartValue
                                                                        .map((e) =>
                                                                            e.value)
                                                                        .toList(),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .success600,
                                                                  ),
                                                                  FFBarChartData(
                                                                    yData: List.generate(
                                                                        random_data.randomInteger(
                                                                            7,
                                                                            7),
                                                                        (index) => random_data.randomInteger(
                                                                            400,
                                                                            700)),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                  ),
                                                                  FFBarChartData(
                                                                    yData: List.generate(
                                                                        random_data.randomInteger(
                                                                            7,
                                                                            7),
                                                                        (index) => random_data.randomInteger(
                                                                            50,
                                                                            400)),
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondary,
                                                                  )
                                                                ],
                                                                xLabels: FFAppState()
                                                                    .chartValue
                                                                    .map((e) =>
                                                                        e.index)
                                                                    .toList()
                                                                    .map((e) =>
                                                                        e.toString())
                                                                    .toList(),
                                                                stacked: true,
                                                                barWidth: 12.0,
                                                                barBorderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            2.0),
                                                                groupSpace: 8.0,
                                                                alignment:
                                                                    BarChartAlignment
                                                                        .spaceAround,
                                                                chartStylingInfo:
                                                                    ChartStylingInfo(
                                                                  backgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .overlay0,
                                                                  showGrid:
                                                                      true,
                                                                  showBorder:
                                                                      false,
                                                                ),
                                                                axisBounds:
                                                                    AxisBounds(),
                                                                xAxisLabelInfo:
                                                                    AxisLabelInfo(
                                                                  reservedSize:
                                                                      28.0,
                                                                ),
                                                                yAxisLabelInfo:
                                                                    AxisLabelInfo(
                                                                  reservedSize:
                                                                      42.0,
                                                                ),
                                                              ),
                                                            ).animateOnPageLoad(
                                                                animationsMap[
                                                                    'chartOnPageLoadAnimation1']!),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 16.0,
                                                                0.0, 16.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        wrapWithModel(
                                                          model: _model
                                                              .uiLegendCustomModel2,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          updateOnChange: true,
                                                          child:
                                                              UiLegendCustomWidget(
                                                            piller:
                                                                PillerStruct(
                                                              primaryColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondary,
                                                              accent1:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent2,
                                                              pillar: 'Situps',
                                                            ),
                                                          ),
                                                        ),
                                                        wrapWithModel(
                                                          model: _model
                                                              .uiLegendCustomModel3,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          updateOnChange: true,
                                                          child:
                                                              UiLegendCustomWidget(
                                                            piller:
                                                                PillerStruct(
                                                              primaryColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                              accent1:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent1,
                                                              pillar: 'Running',
                                                            ),
                                                          ),
                                                        ),
                                                        wrapWithModel(
                                                          model: _model
                                                              .uiLegendCustomModel4,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          updateOnChange: true,
                                                          child:
                                                              UiLegendCustomWidget(
                                                            piller:
                                                                PillerStruct(
                                                              primaryColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .success600,
                                                              accent1: FlutterFlowTheme
                                                                      .of(context)
                                                                  .success630,
                                                              pillar: 'Pushups',
                                                            ),
                                                          ),
                                                        ),
                                                      ].divide(SizedBox(
                                                          height: 8.0)),
                                                    ),
                                                  ),
                                                ]
                                                    .divide(
                                                        SizedBox(width: 8.0))
                                                    .addToEnd(
                                                        SizedBox(width: 12.0)),
                                              ),
                                              Divider(
                                                height: 1.0,
                                                thickness: 1.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                              Flex(
                                                direction: Axis.horizontal,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .cardStatsModel1,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: CardStatsWidget(
                                                        title: 'Avg PFT',
                                                        value: '83',
                                                        subValue: ' /100',
                                                        borderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryBackground,
                                                        showIcon: false,
                                                        largeText: true,
                                                        description:
                                                            '+3 pts from last week',
                                                        showDescription: true,
                                                        action: () async {},
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .cardStatsModel2,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      updateOnChange: true,
                                                      child: CardStatsWidget(
                                                        title: 'Thunderbolt',
                                                        value: '91',
                                                        subValue: ' pts',
                                                        borderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryBackground,
                                                        showIcon: true,
                                                        largeText: true,
                                                        description:
                                                            'You are 8 pts away from goal',
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
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(4.0, 8.0,
                                                                12.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        wrapWithModel(
                                                          model: _model
                                                              .uiLegendCustomModel5,
                                                          updateCallback: () =>
                                                              safeSetState(
                                                                  () {}),
                                                          updateOnChange: true,
                                                          child:
                                                              UiLegendCustomWidget(
                                                            piller:
                                                                PillerStruct(
                                                              primaryColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .success,
                                                              accent1:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .success30,
                                                              pillar:
                                                                  'Trending Up',
                                                            ),
                                                          ),
                                                        ),
                                                        Icon(
                                                          FFIcons.ktrendUp01,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .success,
                                                          size: 24.0,
                                                        ),
                                                      ].divide(SizedBox(
                                                          width: 12.0)),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 0.0,
                                                                12.0, 12.0),
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .uiHeaderSubModel2,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: UiHeaderSubWidget(
                                                        title:
                                                            'Trending in the right direction!',
                                                        subtitle:
                                                            'Your last 4 runs have been in the right zone, you are gaining traction in your PFT test.',
                                                        header: false,
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(SizedBox(height: 4.0)),
                                              ),
                                            ].addToEnd(SizedBox(height: 0.0)),
                                          ),
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.trackRunningGraphModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TrackRunningGraphWidget(),
                                      ),
                                      wrapWithModel(
                                        model: _model.trackVO2MaxGraphModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TrackVO2MaxGraphWidget(),
                                      ),
                                      wrapWithModel(
                                        model:
                                            _model.trackFitnessStatTableModel,
                                        updateCallback: () =>
                                            safeSetState(() {}),
                                        child: TrackFitnessStatTableWidget(),
                                      ),
                                    ]
                                        .divide(SizedBox(height: 12.0))
                                        .addToEnd(SizedBox(height: 130.0)),
                                  );
                                } else {
                                  return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 0.0, 0.0),
                                        child: wrapWithModel(
                                          model: _model.uiHeaderSubModel3,
                                          updateCallback: () =>
                                              safeSetState(() {}),
                                          child: UiHeaderSubWidget(
                                            title: 'Spiritual Health',
                                            subtitle:
                                                'Your life balance in this vertical is improving.',
                                            header: true,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        child: AnimatedContainer(
                                          duration: Duration(milliseconds: 200),
                                          curve: Curves.easeInOut,
                                          width: double.infinity,
                                          constraints: BoxConstraints(
                                            maxWidth: 770.0,
                                          ),
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 0.0, 0.0),
                                                child: wrapWithModel(
                                                  model:
                                                      _model.uiHeaderSubModel4,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: UiHeaderSubWidget(
                                                    title:
                                                        'Spiritual Activities',
                                                    subtitle:
                                                        'You have tracked 8 tasks this past week.',
                                                    header: false,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 12.0, 0.0, 12.0),
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
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        borderWidth: 4.0,
                                                        borderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent1,
                                                      ),
                                                      FFBarChartData(
                                                        yData: List.generate(
                                                            random_data
                                                                .randomInteger(
                                                                    7, 7),
                                                            (index) => random_data
                                                                .randomInteger(
                                                                    200, 500)),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary500,
                                                        borderWidth: 4.0,
                                                        borderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary530,
                                                      )
                                                    ],
                                                    xLabels: FFAppState()
                                                        .chartValue
                                                        .map((e) => e.index)
                                                        .toList()
                                                        .map(
                                                            (e) => e.toString())
                                                        .toList(),
                                                    stacked: true,
                                                    barWidth: 16.0,
                                                    barBorderRadius:
                                                        BorderRadius.circular(
                                                            4.0),
                                                    groupSpace: 8.0,
                                                    alignment: BarChartAlignment
                                                        .spaceAround,
                                                    chartStylingInfo:
                                                        ChartStylingInfo(
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .overlay0,
                                                      showBorder: false,
                                                    ),
                                                    axisBounds: AxisBounds(),
                                                    xAxisLabelInfo:
                                                        AxisLabelInfo(
                                                      reservedSize: 28.0,
                                                    ),
                                                    yAxisLabelInfo:
                                                        AxisLabelInfo(
                                                      reservedSize: 42.0,
                                                    ),
                                                  ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'chartOnPageLoadAnimation2']!),
                                              ),
                                              Divider(
                                                height: 1.0,
                                                thickness: 1.0,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                              ),
                                              Flex(
                                                direction: Axis.horizontal,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .cardStatsModel3,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: CardStatsWidget(
                                                        title: 'Time Spent',
                                                        value: '32',
                                                        subValue: ' mins avg.',
                                                        borderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryBackground,
                                                        action: () async {},
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: wrapWithModel(
                                                      model: _model
                                                          .cardStatsModel4,
                                                      updateCallback: () =>
                                                          safeSetState(() {}),
                                                      child: CardStatsWidget(
                                                        title: 'Avg. Score',
                                                        value: '8.32',
                                                        subValue: ' score',
                                                        borderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryBackground,
                                                        action: () async {},
                                                      ),
                                                    ),
                                                  ),
                                                ].divide(true
                                                    ? SizedBox(width: 12.0)
                                                    : SizedBox(height: 12.0)),
                                              ),
                                            ]
                                                .addToStart(
                                                    SizedBox(height: 12.0))
                                                .addToEnd(
                                                    SizedBox(height: 0.0)),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            16.0, 0.0, 16.0, 0.0),
                                        child: AnimatedContainer(
                                          duration: Duration(milliseconds: 200),
                                          curve: Curves.easeInOut,
                                          width: double.infinity,
                                          constraints: BoxConstraints(
                                            maxWidth: 770.0,
                                          ),
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .alternate,
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 0.0, 0.0),
                                                child: wrapWithModel(
                                                  model:
                                                      _model.uiHeaderSubModel5,
                                                  updateCallback: () =>
                                                      safeSetState(() {}),
                                                  child: UiHeaderSubWidget(
                                                    title:
                                                        'Weekly Journey & Activities',
                                                    subtitle:
                                                        'Below is a summary of how you have done compared to last week.',
                                                    header: false,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: RichText(
                                                        textScaler:
                                                            MediaQuery.of(
                                                                    context)
                                                                .textScaler,
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: '4 ',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Figtree',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                            TextSpan(
                                                              text:
                                                                  'activities/day',
                                                              style:
                                                                  TextStyle(),
                                                            )
                                                          ],
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Figtree',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      'This Week',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Figtree',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                    LinearPercentIndicator(
                                                      percent: 0.5,
                                                      lineHeight: 12.0,
                                                      animation: true,
                                                      animateFromLastPercent:
                                                          true,
                                                      progressColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent1,
                                                      barRadius:
                                                          Radius.circular(4.0),
                                                      padding: EdgeInsets.zero,
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 8.0)),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: RichText(
                                                        textScaler:
                                                            MediaQuery.of(
                                                                    context)
                                                                .textScaler,
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text: '7/36',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .headlineSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Figtree',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                            TextSpan(
                                                              text:
                                                                  '/weekly goal',
                                                              style:
                                                                  TextStyle(),
                                                            )
                                                          ],
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Figtree',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      'This Week',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .labelMedium
                                                          .override(
                                                            fontFamily:
                                                                'Figtree',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                    LinearPercentIndicator(
                                                      percent: 0.14,
                                                      lineHeight: 12.0,
                                                      animation: true,
                                                      animateFromLastPercent:
                                                          true,
                                                      progressColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent1,
                                                      barRadius:
                                                          Radius.circular(4.0),
                                                      padding: EdgeInsets.zero,
                                                    ),
                                                  ].divide(
                                                      SizedBox(height: 8.0)),
                                                ),
                                              ),
                                            ]
                                                .divide(SizedBox(height: 12.0))
                                                .addToStart(
                                                    SizedBox(height: 12.0))
                                                .addToEnd(
                                                    SizedBox(height: 16.0)),
                                          ),
                                        ),
                                      ),
                                    ]
                                        .divide(SizedBox(height: 12.0))
                                        .addToEnd(SizedBox(height: 130.0)),
                                  );
                                }
                              },
                            ),
                          ),
                        ]
                            .addToStart(SizedBox(height: 12.0))
                            .addToEnd(SizedBox(height: 0.0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 1.0),
              child: wrapWithModel(
                model: _model.navCustomModel,
                updateCallback: () => safeSetState(() {}),
                child: NavCustomWidget(
                  selectedNavParameter: 2,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
