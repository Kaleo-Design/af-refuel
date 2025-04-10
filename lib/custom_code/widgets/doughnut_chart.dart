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

class DoughnutChart extends StatefulWidget {
  const DoughnutChart({
    super.key,
    this.width,
    this.height,
    this.showLegend,
    this.enableTooltip,
    this.innerRadiusPercent,
    this.centerText,
    this.chartData,
    this.tooltipPrefix,
    this.tooltipSuffix,
    this.useBaseColorScheme,
    this.baseColor,
  });

  final double? width;
  final double? height;
  final bool? showLegend;
  final bool? enableTooltip;
  final String? innerRadiusPercent;
  final String? centerText;
  final List<ChartDataStruct>? chartData;
  final String? tooltipPrefix;
  final String? tooltipSuffix;
  final bool? useBaseColorScheme;
  final Color? baseColor;

  @override
  State<DoughnutChart> createState() => _DoughnutChartState();
}

class _DoughnutChartState extends State<DoughnutChart> {
  late TooltipBehavior _tooltipBehavior;

  @override
  void initState() {
    super.initState();
    _tooltipBehavior = TooltipBehavior(
      enable: widget.enableTooltip ?? true,
      builder: (dynamic data, dynamic point, dynamic series, int pointIndex,
          int seriesIndex) {
        final ChartDataStruct item = data as ChartDataStruct;
        final String prefix = widget.tooltipPrefix ?? '';
        final String suffix = widget.tooltipSuffix ?? '';
        final Color markerColor = item.color ?? Colors.grey;

        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.xLabel,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    margin: const EdgeInsets.only(right: 6),
                    decoration: BoxDecoration(
                      color: markerColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text(
                    '$prefix${item.yValue?.toStringAsFixed(2) ?? '0.00'}$suffix',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
      duration: 2500,
      animationDuration: 300,
      elevation: 4,
    );
  }

  List<ChartDataStruct> _generateShadedData(
      List<ChartDataStruct> inputData, Color baseColor) {
    final hslBase = HSLColor.fromColor(baseColor);
    final int count = inputData.length;
    return List.generate(count, (index) {
      final lightness = 0.35 + 0.5 * (index / (count - 1));
      final shadedColor =
          hslBase.withLightness(lightness.clamp(0.1, 0.9)).toColor();
      final item = inputData[index];
      return ChartDataStruct(
        xLabel: item.xLabel,
        yValue: item.yValue,
        color: shadedColor,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.chartData == null || widget.chartData!.isEmpty) {
      return const SizedBox.shrink();
    }

    final List<ChartDataStruct> chartData =
        (widget.useBaseColorScheme == true && widget.baseColor != null)
            ? _generateShadedData(widget.chartData!, widget.baseColor!)
            : widget.chartData!;

    return Container(
      width: widget.width,
      height: widget.height,
      child: SfCircularChart(
        legend: Legend(
          isVisible: widget.showLegend ?? true,
          position: LegendPosition.bottom,
        ),
        annotations: widget.centerText != null
            ? <CircularChartAnnotation>[
                CircularChartAnnotation(
                  widget: Text(
                    widget.centerText!,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                )
              ]
            : null,
        tooltipBehavior: _tooltipBehavior,
        series: <DoughnutSeries<ChartDataStruct, String>>[
          DoughnutSeries<ChartDataStruct, String>(
            dataSource: chartData,
            xValueMapper: (ChartDataStruct item, _) => item.xLabel,
            yValueMapper: (ChartDataStruct item, _) => item.yValue,
            pointColorMapper: (ChartDataStruct item, _) => item.color,
            dataLabelSettings: const DataLabelSettings(isVisible: true),
            innerRadius: widget.innerRadiusPercent ?? '60%',
          ),
        ],
      ),
    );
  }
}

class _ChartData {
  final String xLabel;
  final double yValue;
  final Color? color;

  _ChartData(this.xLabel, this.yValue, this.color);
}
