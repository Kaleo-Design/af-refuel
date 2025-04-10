import '/all_components/backgrounds/background_image/background_image_widget.dart';
import '/all_components/nav/nav_custom/nav_custom_widget.dart';
import '/all_components/nav/nav_header/nav_header_widget.dart';
import '/all_components/nav/nav_link_title/nav_link_title_widget.dart';
import '/all_components/ui_components/ui_tag/ui_tag_widget.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/pages/workouts/card_stats/card_stats_widget.dart';
import '/index.dart';
import 'main_profile_widget.dart' show MainProfileWidget;
import 'package:flutter/material.dart';

class MainProfileModel extends FlutterFlowModel<MainProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for background_image component.
  late BackgroundImageModel backgroundImageModel;
  // Model for nav_header component.
  late NavHeaderModel navHeaderModel;
  // Model for ui_tag component.
  late UiTagModel uiTagModel;
  // Stores action output result for [Backend Call - API (Set Unit)] action in ui_tag widget.
  ApiCallResponse? setUnitApiCall;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Model for card_stats component.
  late CardStatsModel cardStatsModel1;
  // Model for card_stats component.
  late CardStatsModel cardStatsModel2;
  // Model for nav_link_title component.
  late NavLinkTitleModel navLinkTitleModel1;
  // Model for nav_link_title component.
  late NavLinkTitleModel navLinkTitleModel2;
  // Model for nav_custom component.
  late NavCustomModel navCustomModel;

  @override
  void initState(BuildContext context) {
    backgroundImageModel = createModel(context, () => BackgroundImageModel());
    navHeaderModel = createModel(context, () => NavHeaderModel());
    uiTagModel = createModel(context, () => UiTagModel());
    cardStatsModel1 = createModel(context, () => CardStatsModel());
    cardStatsModel2 = createModel(context, () => CardStatsModel());
    navLinkTitleModel1 = createModel(context, () => NavLinkTitleModel());
    navLinkTitleModel2 = createModel(context, () => NavLinkTitleModel());
    navCustomModel = createModel(context, () => NavCustomModel());
  }

  @override
  void dispose() {
    backgroundImageModel.dispose();
    navHeaderModel.dispose();
    uiTagModel.dispose();
    cardStatsModel1.dispose();
    cardStatsModel2.dispose();
    navLinkTitleModel1.dispose();
    navLinkTitleModel2.dispose();
    navCustomModel.dispose();
  }
}
