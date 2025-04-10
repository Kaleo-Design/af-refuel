import '/all_components/backgrounds/background_image/background_image_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/journalling/journal_components/view_journal/view_journal_widget.dart';
import 'sub_journal_widget.dart' show SubJournalWidget;
import 'package:flutter/material.dart';

class SubJournalModel extends FlutterFlowModel<SubJournalWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for background_image component.
  late BackgroundImageModel backgroundImageModel;
  // Model for view_journal component.
  late ViewJournalModel viewJournalModel;

  @override
  void initState(BuildContext context) {
    backgroundImageModel = createModel(context, () => BackgroundImageModel());
    viewJournalModel = createModel(context, () => ViewJournalModel());
  }

  @override
  void dispose() {
    backgroundImageModel.dispose();
    viewJournalModel.dispose();
  }
}
