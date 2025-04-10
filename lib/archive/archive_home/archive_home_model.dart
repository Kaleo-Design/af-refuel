import '/all_components/backgrounds/background_image/background_image_widget.dart';
import '/all_components/cards/card_activity/card_activity_widget.dart';
import '/all_components/nav/nav_custom/nav_custom_widget.dart';
import '/all_components/nav/nav_header/nav_header_widget.dart';
import '/all_components/ui_components/ui_header_sub/ui_header_sub_widget.dart';
import '/all_components/views/view_feedback/view_feedback_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/chat_components/chat_box/chat_box_widget.dart';
import '/index.dart';
import 'archive_home_widget.dart' show ArchiveHomeWidget;
import 'package:flutter/material.dart';

class ArchiveHomeModel extends FlutterFlowModel<ArchiveHomeWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for background_image component.
  late BackgroundImageModel backgroundImageModel;
  // Model for nav_header component.
  late NavHeaderModel navHeaderModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for ui_header_sub component.
  late UiHeaderSubModel uiHeaderSubModel1;
  // Model for chat_box component.
  late ChatBoxModel chatBoxModel;
  // Model for ui_header_sub component.
  late UiHeaderSubModel uiHeaderSubModel2;
  // Model for card_activity component.
  late CardActivityModel cardActivityModel1;
  // Model for card_activity component.
  late CardActivityModel cardActivityModel2;
  // Model for card_activity component.
  late CardActivityModel cardActivityModel3;
  // Model for card_activity component.
  late CardActivityModel cardActivityModel4;
  // Model for card_activity component.
  late CardActivityModel cardActivityModel5;
  // Model for view_feedback component.
  late ViewFeedbackModel viewFeedbackModel;
  // Model for ui_header_sub component.
  late UiHeaderSubModel uiHeaderSubModel3;
  // Model for card_activity component.
  late CardActivityModel cardActivityModel6;
  // Model for card_activity component.
  late CardActivityModel cardActivityModel7;
  // Model for card_activity component.
  late CardActivityModel cardActivityModel8;
  // Model for card_activity component.
  late CardActivityModel cardActivityModel9;
  // Model for nav_custom component.
  late NavCustomModel navCustomModel;

  @override
  void initState(BuildContext context) {
    backgroundImageModel = createModel(context, () => BackgroundImageModel());
    navHeaderModel = createModel(context, () => NavHeaderModel());
    uiHeaderSubModel1 = createModel(context, () => UiHeaderSubModel());
    chatBoxModel = createModel(context, () => ChatBoxModel());
    uiHeaderSubModel2 = createModel(context, () => UiHeaderSubModel());
    cardActivityModel1 = createModel(context, () => CardActivityModel());
    cardActivityModel2 = createModel(context, () => CardActivityModel());
    cardActivityModel3 = createModel(context, () => CardActivityModel());
    cardActivityModel4 = createModel(context, () => CardActivityModel());
    cardActivityModel5 = createModel(context, () => CardActivityModel());
    viewFeedbackModel = createModel(context, () => ViewFeedbackModel());
    uiHeaderSubModel3 = createModel(context, () => UiHeaderSubModel());
    cardActivityModel6 = createModel(context, () => CardActivityModel());
    cardActivityModel7 = createModel(context, () => CardActivityModel());
    cardActivityModel8 = createModel(context, () => CardActivityModel());
    cardActivityModel9 = createModel(context, () => CardActivityModel());
    navCustomModel = createModel(context, () => NavCustomModel());
  }

  @override
  void dispose() {
    backgroundImageModel.dispose();
    navHeaderModel.dispose();
    uiHeaderSubModel1.dispose();
    chatBoxModel.dispose();
    uiHeaderSubModel2.dispose();
    cardActivityModel1.dispose();
    cardActivityModel2.dispose();
    cardActivityModel3.dispose();
    cardActivityModel4.dispose();
    cardActivityModel5.dispose();
    viewFeedbackModel.dispose();
    uiHeaderSubModel3.dispose();
    cardActivityModel6.dispose();
    cardActivityModel7.dispose();
    cardActivityModel8.dispose();
    cardActivityModel9.dispose();
    navCustomModel.dispose();
  }
}
