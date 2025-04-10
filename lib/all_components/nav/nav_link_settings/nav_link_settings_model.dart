import '/all_components/ui_components/ui_tag/ui_tag_widget.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'nav_link_settings_widget.dart' show NavLinkSettingsWidget;
import 'package:flutter/material.dart';

class NavLinkSettingsModel extends FlutterFlowModel<NavLinkSettingsWidget> {
  ///  Local state fields for this component.

  ContentFeedback? selectedFeedback = ContentFeedback.loved_it;

  ///  State fields for stateful widgets in this component.

  // Model for ui_tag component.
  late UiTagModel uiTagModel;

  @override
  void initState(BuildContext context) {
    uiTagModel = createModel(context, () => UiTagModel());
  }

  @override
  void dispose() {
    uiTagModel.dispose();
  }
}
