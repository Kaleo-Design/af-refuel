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

class LineChart extends StatefulWidget {
  const LineChart({
    super.key,
    this.width,
    this.height,
    this.seriesOneData,
    this.seriesTwoData,
    this.seriesThreeData,
    this.seriesFourData,
    this.seriesOneColor,
    this.seriesTwoColor,
    this.seriesThreeColor,
    this.seriesFourColor,
    this.seriesOneName,
    this.seriesTwoName,
    this.seriesThreeName,
    this.seriesFourName,
    this.yAxisMax,
    this.chartTitle,
    this.showLegend,
    this.enableTooltip,
    this.useGradientFill,
    this.isStacked,
  });

  final double? width;
  final double? height;
  final List<ChartDataStruct>? seriesOneData;
  final List<ChartDataStruct>? seriesTwoData;
  final List<ChartDataStruct>? seriesThreeData;
  final List<ChartDataStruct>? seriesFourData;
  final Color? seriesOneColor;
  final Color? seriesTwoColor;
  final Color? seriesThreeColor;
  final Color? seriesFourColor;
  final String? seriesOneName;
  final String? seriesTwoName;
  final String? seriesThreeName;
  final String? seriesFourName;
  final double? yAxisMax;
  final String? chartTitle;
  final bool? showLegend;
  final bool? enableTooltip;
  final bool? useGradientFill;
  final bool? isStacked;

  @override
  State<LineChart> createState() => _LineChartState();
}

class _LineChartState extends State<LineChart> {
  List<_ChartData> _mapToSeries(List<ChartDataStruct>? dataList) {
    if (dataList == null) return [];
    return dataList
        .map((e) => _ChartData(e.xLabel, e.yValue?.toDouble() ?? 0))
        .toList();
  }

  CartesianSeries<_ChartData, String> _buildSeries(
      List<_ChartData> data, Color color, String name, bool useGradient) {
    final gradient = LinearGradient(
      colors: [color.withOpacity(0.2), color.withOpacity(0.6)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    return widget.isStacked == true
        ? StackedAreaSeries<_ChartData, String>(
            dataSource: data,
            xValueMapper: (d, _) => d.x,
            yValueMapper: (d, _) => d.y,
            gradient: useGradient ? gradient : null,
            name: name,
          )
        : AreaSeries<_ChartData, String>(
            dataSource: data,
            xValueMapper: (d, _) => d.x,
            yValueMapper: (d, _) => d.y,
            gradient: useGradient ? gradient : null,
            name: name,
          );
  }

  @override
  Widget build(BuildContext context) {
    final dataOne = _mapToSeries(widget.seriesOneData);
    final dataTwo = _mapToSeries(widget.seriesTwoData);
    final dataThree = _mapToSeries(widget.seriesThreeData);
    final dataFour = _mapToSeries(widget.seriesFourData);

    final seriesList = <CartesianSeries<_ChartData, String>>[];

    if (dataOne.isNotEmpty &&
        widget.seriesOneColor != null &&
        widget.seriesOneName != null) {
      seriesList.add(_buildSeries(dataOne, widget.seriesOneColor!,
          widget.seriesOneName!, widget.useGradientFill ?? false));
    }
    if (dataTwo.isNotEmpty &&
        widget.seriesTwoColor != null &&
        widget.seriesTwoName != null) {
      seriesList.add(_buildSeries(dataTwo, widget.seriesTwoColor!,
          widget.seriesTwoName!, widget.useGradientFill ?? false));
    }
    if (dataThree.isNotEmpty &&
        widget.seriesThreeColor != null &&
        widget.seriesThreeName != null) {
      seriesList.add(_buildSeries(dataThree, widget.seriesThreeColor!,
          widget.seriesThreeName!, widget.useGradientFill ?? false));
    }
    if (dataFour.isNotEmpty &&
        widget.seriesFourColor != null &&
        widget.seriesFourName != null) {
      seriesList.add(_buildSeries(dataFour, widget.seriesFourColor!,
          widget.seriesFourName!, widget.useGradientFill ?? false));
    }

    return Container(
      width: widget.width,
      height: widget.height,
      child: SfCartesianChart(
        title: ChartTitle(text: widget.chartTitle ?? ''),
        legend: Legend(isVisible: widget.showLegend ?? true),
        tooltipBehavior: TooltipBehavior(enable: widget.enableTooltip ?? true),
        primaryXAxis: CategoryAxis(),
        primaryYAxis: NumericAxis(maximum: widget.yAxisMax),
        series: seriesList,
      ),
    );
  }
}

class _ChartData {
  final String x;
  final double y;

  _ChartData(this.x, this.y);
}
