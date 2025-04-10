import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'charts_dev_space_model.dart';
export 'charts_dev_space_model.dart';

class ChartsDevSpaceWidget extends StatefulWidget {
  const ChartsDevSpaceWidget({super.key});

  static String routeName = 'charts_dev_space';
  static String routePath = '/chartsDevSpace';

  @override
  State<ChartsDevSpaceWidget> createState() => _ChartsDevSpaceWidgetState();
}

class _ChartsDevSpaceWidgetState extends State<ChartsDevSpaceWidget> {
  late ChartsDevSpaceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChartsDevSpaceModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      while (_model.mockDataLoopIndex < 7) {
        _model.addToChartSeriesOne(ChartDataStruct(
          xLabel: _model.mockDataLoopIndex.toString(),
          yValue: random_data.randomInteger(15, 100).toDouble(),
          color: random_data.randomColor(),
        ));
        _model.addToChartSeriesTwo(ChartDataStruct(
          xLabel: _model.mockDataLoopIndex.toString(),
          yValue: random_data.randomInteger(15, 100).toDouble(),
          color: random_data.randomColor(),
        ));
        _model.addToChartSeriesThree(ChartDataStruct(
          xLabel: _model.mockDataLoopIndex.toString(),
          yValue: random_data.randomInteger(15, 100).toDouble(),
          color: random_data.randomColor(),
        ));
        _model.addToChartSeriesFour(ChartDataStruct(
          xLabel: _model.mockDataLoopIndex.toString(),
          yValue: random_data.randomInteger(15, 100).toDouble(),
          color: random_data.randomColor(),
        ));
        safeSetState(() {});
        _model.mockDataLoopIndex = _model.mockDataLoopIndex + 1;
        safeSetState(() {});
      }
      _model.mockDataLoopIndex = 0;
      safeSetState(() {});
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
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Charts Dev Space',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Figtree',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Column',
                      style: FlutterFlowTheme.of(context).displaySmall.override(
                            fontFamily: 'Figtree',
                            fontSize: 28.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 500.0,
                      child: custom_widgets.FourSeriesColumnChart(
                        width: double.infinity,
                        height: 500.0,
                        seriesOneColor: FlutterFlowTheme.of(context).secondary,
                        seriesTwoColor: FlutterFlowTheme.of(context).primary,
                        seriesThreeColor: FlutterFlowTheme.of(context).success,
                        seriesFourColor: FlutterFlowTheme.of(context).tertiary,
                        yAxisMax: 150.0,
                        chartTitle: '',
                        showLegend: true,
                        enableTooltip: true,
                        tooltipPrefix: 'Test ',
                        tooltipSuffix: '',
                        seriesOneData: _model.chartSeriesOne,
                        seriesTwoData: _model.chartSeriesTwo,
                        seriesThreeData: _model.chartSeriesThree,
                        seriesFourData: _model.chartSeriesFour,
                        seriesOneName: 'Awake',
                        seriesTwoName: 'Light',
                        seriesThreeName: 'REM',
                        seriesFourName: 'Deep',
                        hideSeriesOne: false,
                        hideSeriesTwo: false,
                        hideSeriesThree: false,
                        hideSeriesFour: false,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Doughnut',
                      style: FlutterFlowTheme.of(context).displaySmall.override(
                            fontFamily: 'Figtree',
                            fontSize: 28.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 320.0,
                      child: custom_widgets.DoughnutChart(
                        width: double.infinity,
                        height: 320.0,
                        showLegend: true,
                        enableTooltip: true,
                        innerRadiusPercent: '40%',
                        centerText: 'Sleep',
                        chartData: _model.chartSeriesOne,
                        tooltipPrefix: '',
                        tooltipSuffix: '',
                        useBaseColorScheme: true,
                        baseColor: FlutterFlowTheme.of(context).tertiary,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Line',
                      style: FlutterFlowTheme.of(context).displaySmall.override(
                            fontFamily: 'Figtree',
                            fontSize: 28.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 400.0,
                      child: custom_widgets.LineChart(
                        width: double.infinity,
                        height: 400.0,
                        seriesOneColor: FlutterFlowTheme.of(context).secondary,
                        seriesTwoColor: FlutterFlowTheme.of(context).primary,
                        seriesThreeColor: FlutterFlowTheme.of(context).success,
                        seriesFourColor: FlutterFlowTheme.of(context).tertiary,
                        seriesOneName: 'Awake',
                        seriesTwoName: 'Light',
                        seriesThreeName: 'REM',
                        seriesFourName: 'Deep',
                        yAxisMax: 150.0,
                        chartTitle: '',
                        showLegend: true,
                        enableTooltip: true,
                        useGradientFill: true,
                        isStacked: false,
                        seriesOneData: _model.chartSeriesOne,
                        seriesTwoData: _model.chartSeriesTwo,
                        seriesThreeData: _model.chartSeriesThree,
                        seriesFourData: _model.chartSeriesFour,
                      ),
                    ),
                  ],
                ),
              ),
            ]
                .divide(SizedBox(height: 24.0))
                .addToStart(SizedBox(height: 24.0))
                .addToEnd(SizedBox(height: 96.0)),
          ),
        ),
      ),
    );
  }
}
