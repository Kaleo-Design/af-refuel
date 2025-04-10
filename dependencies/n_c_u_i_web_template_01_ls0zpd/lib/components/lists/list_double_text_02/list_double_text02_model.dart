import '/components/ui_elements/tag_generic/tag_generic_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'list_double_text02_widget.dart' show ListDoubleText02Widget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListDoubleText02Model extends FlutterFlowModel<ListDoubleText02Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for tag_generic component.
  late TagGenericModel tagGenericModel;

  @override
  void initState(BuildContext context) {
    tagGenericModel = createModel(context, () => TagGenericModel());
  }

  @override
  void dispose() {
    tagGenericModel.dispose();
  }
}
