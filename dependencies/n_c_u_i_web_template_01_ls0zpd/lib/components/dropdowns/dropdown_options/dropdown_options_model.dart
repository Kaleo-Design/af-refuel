import '/components/lists/list_single_icon/list_single_icon_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'dropdown_options_widget.dart' show DropdownOptionsWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DropdownOptionsModel extends FlutterFlowModel<DropdownOptionsWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for list_single_icon component.
  late ListSingleIconModel listSingleIconModel1;
  // Model for list_single_icon component.
  late ListSingleIconModel listSingleIconModel2;
  // Model for list_single_icon component.
  late ListSingleIconModel listSingleIconModel3;

  @override
  void initState(BuildContext context) {
    listSingleIconModel1 = createModel(context, () => ListSingleIconModel());
    listSingleIconModel2 = createModel(context, () => ListSingleIconModel());
    listSingleIconModel3 = createModel(context, () => ListSingleIconModel());
  }

  @override
  void dispose() {
    listSingleIconModel1.dispose();
    listSingleIconModel2.dispose();
    listSingleIconModel3.dispose();
  }
}
