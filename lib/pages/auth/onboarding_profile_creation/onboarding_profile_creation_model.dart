import '/all_components/cards/list_select/list_select_widget.dart';
import '/all_components/ui_components/ui_header_sub/ui_header_sub_widget.dart';
import '/components/view_goals_onboarding_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'onboarding_profile_creation_widget.dart'
    show OnboardingProfileCreationWidget;
import 'package:flutter/material.dart';

class OnboardingProfileCreationModel
    extends FlutterFlowModel<OnboardingProfileCreationWidget> {
  ///  Local state fields for this page.

  bool healthKitActive = false;

  bool notificationsActive = false;

  String? gender;

  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;
  // Model for list_select component.
  late ListSelectModel listSelectModel1;
  // Model for list_select component.
  late ListSelectModel listSelectModel2;
  // State field(s) for Slider widget.
  double? sliderValue;
  // State field(s) for location widget.
  FocusNode? locationFocusNode;
  TextEditingController? locationTextController;
  String? Function(BuildContext, String?)? locationTextControllerValidator;
  // Model for military_status.
  late ListSelectModel militaryStatusModel;
  // Model for ranking.
  late ListSelectModel rankingModel;
  // Model for view_goals_onboarding component.
  late ViewGoalsOnboardingModel viewGoalsOnboardingModel;
  // Model for ui_header_sub component.
  late UiHeaderSubModel uiHeaderSubModel1;
  // Model for ui_header_sub component.
  late UiHeaderSubModel uiHeaderSubModel2;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController1;
  String? get choiceChipsValue1 =>
      choiceChipsValueController1?.value?.firstOrNull;
  set choiceChipsValue1(String? val) =>
      choiceChipsValueController1?.value = val != null ? [val] : [];
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController2;
  String? get choiceChipsValue2 =>
      choiceChipsValueController2?.value?.firstOrNull;
  set choiceChipsValue2(String? val) =>
      choiceChipsValueController2?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {
    listSelectModel1 = createModel(context, () => ListSelectModel());
    listSelectModel2 = createModel(context, () => ListSelectModel());
    militaryStatusModel = createModel(context, () => ListSelectModel());
    rankingModel = createModel(context, () => ListSelectModel());
    viewGoalsOnboardingModel =
        createModel(context, () => ViewGoalsOnboardingModel());
    uiHeaderSubModel1 = createModel(context, () => UiHeaderSubModel());
    uiHeaderSubModel2 = createModel(context, () => UiHeaderSubModel());
  }

  @override
  void dispose() {
    usernameFocusNode?.dispose();
    usernameTextController?.dispose();

    listSelectModel1.dispose();
    listSelectModel2.dispose();
    locationFocusNode?.dispose();
    locationTextController?.dispose();

    militaryStatusModel.dispose();
    rankingModel.dispose();
    viewGoalsOnboardingModel.dispose();
    uiHeaderSubModel1.dispose();
    uiHeaderSubModel2.dispose();
  }
}
