// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/actions/actions.dart' as action_blocks;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:syncfusion_flutter_charts/charts.dart';

class FourSeriesColumnChart extends StatefulWidget {
  const FourSeriesColumnChart({
    super.key,
    this.width,
    this.height,
    this.seriesOneData,
    this.seriesTwoData,
    this.seriesThreeData,
    this.seriesFourData,
    required this.seriesOneColor,
    required this.seriesTwoColor,
    required this.seriesThreeColor,
    required this.seriesFourColor,
    required this.seriesOneName,
    required this.seriesTwoName,
    required this.seriesThreeName,
    required this.seriesFourName,
    this.yAxisMax,
    this.chartTitle,
    this.showLegend = true,
    this.enableTooltip = true,
    this.tooltipPrefix = '',
    this.tooltipSuffix = '',
    this.hideSeriesOne = false,
    this.hideSeriesTwo = false,
    this.hideSeriesThree = false,
    this.hideSeriesFour = false,
  });

  final double? width;
  final double? height;
  final List<ChartDataStruct>? seriesOneData;
  final List<ChartDataStruct>? seriesTwoData;
  final List<ChartDataStruct>? seriesThreeData;
  final List<ChartDataStruct>? seriesFourData;
  final Color seriesOneColor;
  final Color seriesTwoColor;
  final Color seriesThreeColor;
  final Color seriesFourColor;
  final String seriesOneName;
  final String seriesTwoName;
  final String seriesThreeName;
  final String seriesFourName;
  final double? yAxisMax;
  final String? chartTitle;
  final bool showLegend;
  final bool enableTooltip;
  final String tooltipPrefix;
  final String tooltipSuffix;
  final bool hideSeriesOne;
  final bool hideSeriesTwo;
  final bool hideSeriesThree;
  final bool hideSeriesFour;

  @override
  State<FourSeriesColumnChart> createState() => _FourSeriesColumnChartState();
}

class _FourSeriesColumnChartState extends State<FourSeriesColumnChart> {
  List<_ChartData> _mapToSeries(List<ChartDataStruct>? dataList) {
    if (dataList == null) return [];
    return dataList
        .map((e) => _ChartData(e.xLabel, e.yValue?.toDouble() ?? 0))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final dataOne = _mapToSeries(widget.seriesOneData);
    final dataTwo = _mapToSeries(widget.seriesTwoData);
    final dataThree = _mapToSeries(widget.seriesThreeData);
    final dataFour = _mapToSeries(widget.seriesFourData);

    return Container(
      width: widget.width,
      height: widget.height,
      child: SfCartesianChart(
        title: ChartTitle(
          text: widget.chartTitle?.isNotEmpty == true ? widget.chartTitle! : '',
        ),
        legend: Legend(
          isVisible: widget.showLegend,
          position: LegendPosition.top,
          alignment: ChartAlignment.near,
          overflowMode: LegendItemOverflowMode.wrap,
        ),
        tooltipBehavior: TooltipBehavior(
          enable: widget.enableTooltip,
          format: '${widget.tooltipPrefix}point.y${widget.tooltipSuffix}',
        ),
        primaryXAxis: CategoryAxis(),
        primaryYAxis: NumericAxis(
          maximum: widget.yAxisMax,
        ),
        series: <CartesianSeries<dynamic, dynamic>>[
          if (!widget.hideSeriesOne)
            ColumnSeries<_ChartData, String>(
              dataSource: dataOne,
              xValueMapper: (_ChartData data, _) => data.xLabel,
              yValueMapper: (_ChartData data, _) => data.yValue,
              name: widget.seriesOneName,
              color: widget.seriesOneColor,
            ),
          if (!widget.hideSeriesTwo)
            ColumnSeries<_ChartData, String>(
              dataSource: dataTwo,
              xValueMapper: (_ChartData data, _) => data.xLabel,
              yValueMapper: (_ChartData data, _) => data.yValue,
              name: widget.seriesTwoName,
              color: widget.seriesTwoColor,
            ),
          if (!widget.hideSeriesThree)
            ColumnSeries<_ChartData, String>(
              dataSource: dataThree,
              xValueMapper: (_ChartData data, _) => data.xLabel,
              yValueMapper: (_ChartData data, _) => data.yValue,
              name: widget.seriesThreeName,
              color: widget.seriesThreeColor,
            ),
          if (!widget.hideSeriesFour)
            ColumnSeries<_ChartData, String>(
              dataSource: dataFour,
              xValueMapper: (_ChartData data, _) => data.xLabel,
              yValueMapper: (_ChartData data, _) => data.yValue,
              name: widget.seriesFourName,
              color: widget.seriesFourColor,
            ),
        ],
      ),
    );
  }
}

class _ChartData {
  final String xLabel;
  final double yValue;

  _ChartData(this.xLabel, this.yValue);
}
