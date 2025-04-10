import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'charts_dev_space_widget.dart' show ChartsDevSpaceWidget;
import 'package:flutter/material.dart';

class ChartsDevSpaceModel extends FlutterFlowModel<ChartsDevSpaceWidget> {
  ///  Local state fields for this page.

  int mockDataLoopIndex = 0;

  List<ChartDataStruct> chartSeriesOne = [];
  void addToChartSeriesOne(ChartDataStruct item) => chartSeriesOne.add(item);
  void removeFromChartSeriesOne(ChartDataStruct item) =>
      chartSeriesOne.remove(item);
  void removeAtIndexFromChartSeriesOne(int index) =>
      chartSeriesOne.removeAt(index);
  void insertAtIndexInChartSeriesOne(int index, ChartDataStruct item) =>
      chartSeriesOne.insert(index, item);
  void updateChartSeriesOneAtIndex(
          int index, Function(ChartDataStruct) updateFn) =>
      chartSeriesOne[index] = updateFn(chartSeriesOne[index]);

  List<ChartDataStruct> chartSeriesTwo = [];
  void addToChartSeriesTwo(ChartDataStruct item) => chartSeriesTwo.add(item);
  void removeFromChartSeriesTwo(ChartDataStruct item) =>
      chartSeriesTwo.remove(item);
  void removeAtIndexFromChartSeriesTwo(int index) =>
      chartSeriesTwo.removeAt(index);
  void insertAtIndexInChartSeriesTwo(int index, ChartDataStruct item) =>
      chartSeriesTwo.insert(index, item);
  void updateChartSeriesTwoAtIndex(
          int index, Function(ChartDataStruct) updateFn) =>
      chartSeriesTwo[index] = updateFn(chartSeriesTwo[index]);

  List<ChartDataStruct> chartSeriesThree = [];
  void addToChartSeriesThree(ChartDataStruct item) =>
      chartSeriesThree.add(item);
  void removeFromChartSeriesThree(ChartDataStruct item) =>
      chartSeriesThree.remove(item);
  void removeAtIndexFromChartSeriesThree(int index) =>
      chartSeriesThree.removeAt(index);
  void insertAtIndexInChartSeriesThree(int index, ChartDataStruct item) =>
      chartSeriesThree.insert(index, item);
  void updateChartSeriesThreeAtIndex(
          int index, Function(ChartDataStruct) updateFn) =>
      chartSeriesThree[index] = updateFn(chartSeriesThree[index]);

  List<ChartDataStruct> chartSeriesFour = [];
  void addToChartSeriesFour(ChartDataStruct item) => chartSeriesFour.add(item);
  void removeFromChartSeriesFour(ChartDataStruct item) =>
      chartSeriesFour.remove(item);
  void removeAtIndexFromChartSeriesFour(int index) =>
      chartSeriesFour.removeAt(index);
  void insertAtIndexInChartSeriesFour(int index, ChartDataStruct item) =>
      chartSeriesFour.insert(index, item);
  void updateChartSeriesFourAtIndex(
          int index, Function(ChartDataStruct) updateFn) =>
      chartSeriesFour[index] = updateFn(chartSeriesFour[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
