import '/all_components/ui_components/ui_tag/ui_tag_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'nav_link_title_widget.dart' show NavLinkTitleWidget;
import 'package:flutter/material.dart';

class NavLinkTitleModel extends FlutterFlowModel<NavLinkTitleWidget> {
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
