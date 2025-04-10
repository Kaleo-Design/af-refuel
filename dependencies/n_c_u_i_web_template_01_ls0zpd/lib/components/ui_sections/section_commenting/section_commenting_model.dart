import '/components/forms/form_comment_simple/form_comment_simple_widget.dart';
import '/components/ui_elements/ui_comment/ui_comment_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'section_commenting_widget.dart' show SectionCommentingWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SectionCommentingModel extends FlutterFlowModel<SectionCommentingWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ui_comment component.
  late UiCommentModel uiCommentModel;
  // Model for form_comment_simple component.
  late FormCommentSimpleModel formCommentSimpleModel;

  @override
  void initState(BuildContext context) {
    uiCommentModel = createModel(context, () => UiCommentModel());
    formCommentSimpleModel =
        createModel(context, () => FormCommentSimpleModel());
  }

  @override
  void dispose() {
    uiCommentModel.dispose();
    formCommentSimpleModel.dispose();
  }
}
