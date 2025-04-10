import '/assessment_prototype/types/assessment_type_result/assessment_type_result_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'assessment_results_widget.dart' show AssessmentResultsWidget;
import 'package:flutter/material.dart';

class AssessmentResultsModel extends FlutterFlowModel<AssessmentResultsWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for assessment_type_result component.
  late AssessmentTypeResultModel assessmentTypeResultModel;

  @override
  void initState(BuildContext context) {
    assessmentTypeResultModel =
        createModel(context, () => AssessmentTypeResultModel());
  }

  @override
  void dispose() {
    assessmentTypeResultModel.dispose();
  }
}
