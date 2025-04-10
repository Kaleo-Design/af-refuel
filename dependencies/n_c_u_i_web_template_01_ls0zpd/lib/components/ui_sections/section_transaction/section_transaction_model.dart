import '/components/user_components/user_list_select/user_list_select_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'section_transaction_widget.dart' show SectionTransactionWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SectionTransactionModel
    extends FlutterFlowModel<SectionTransactionWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for user_list_select component.
  late UserListSelectModel userListSelectModel;

  @override
  void initState(BuildContext context) {
    userListSelectModel = createModel(context, () => UserListSelectModel());
  }

  @override
  void dispose() {
    userListSelectModel.dispose();
  }
}
