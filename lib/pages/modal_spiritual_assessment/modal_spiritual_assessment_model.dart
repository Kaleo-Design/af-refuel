import '/flutter_flow/flutter_flow_util.dart';
import '/pages/assessment_components/assessment_question/assessment_question_widget.dart';
import '/pages/assessment_components/assessment_success/assessment_success_widget.dart';
import 'modal_spiritual_assessment_widget.dart'
    show ModalSpiritualAssessmentWidget;
import 'package:flutter/material.dart';

class ModalSpiritualAssessmentModel
    extends FlutterFlowModel<ModalSpiritualAssessmentWidget> {
  ///  Local state fields for this component.

  List<String> currentOptions = [];
  void addToCurrentOptions(String item) => currentOptions.add(item);
  void removeFromCurrentOptions(String item) => currentOptions.remove(item);
  void removeAtIndexFromCurrentOptions(int index) =>
      currentOptions.removeAt(index);
  void insertAtIndexInCurrentOptions(int index, String item) =>
      currentOptions.insert(index, item);
  void updateCurrentOptionsAtIndex(int index, Function(String) updateFn) =>
      currentOptions[index] = updateFn(currentOptions[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for assessment_question component.
  late AssessmentQuestionModel assessmentQuestionModel1;
  // Model for assessment_question component.
  late AssessmentQuestionModel assessmentQuestionModel2;
  // Model for assessment_question component.
  late AssessmentQuestionModel assessmentQuestionModel3;
  // Model for assessment_question component.
  late AssessmentQuestionModel assessmentQuestionModel4;
  // Model for assessment_question component.
  late AssessmentQuestionModel assessmentQuestionModel5;
  // Model for assessment_success component.
  late AssessmentSuccessModel assessmentSuccessModel;

  @override
  void initState(BuildContext context) {
    assessmentQuestionModel1 =
        createModel(context, () => AssessmentQuestionModel());
    assessmentQuestionModel2 =
        createModel(context, () => AssessmentQuestionModel());
    assessmentQuestionModel3 =
        createModel(context, () => AssessmentQuestionModel());
    assessmentQuestionModel4 =
        createModel(context, () => AssessmentQuestionModel());
    assessmentQuestionModel5 =
        createModel(context, () => AssessmentQuestionModel());
    assessmentSuccessModel =
        createModel(context, () => AssessmentSuccessModel());
  }

  @override
  void dispose() {
    assessmentQuestionModel1.dispose();
    assessmentQuestionModel2.dispose();
    assessmentQuestionModel3.dispose();
    assessmentQuestionModel4.dispose();
    assessmentQuestionModel5.dispose();
    assessmentSuccessModel.dispose();
  }
}
