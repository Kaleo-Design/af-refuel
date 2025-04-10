import '/components/ui_elements/tag_generic/tag_generic_widget.dart';
import '/components/user_components/user_info/user_info_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'list_double_avatar01_widget.dart' show ListDoubleAvatar01Widget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListDoubleAvatar01Model
    extends FlutterFlowModel<ListDoubleAvatar01Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for user_info component.
  late UserInfoModel userInfoModel;
  // Model for tag_generic component.
  late TagGenericModel tagGenericModel;

  @override
  void initState(BuildContext context) {
    userInfoModel = createModel(context, () => UserInfoModel());
    tagGenericModel = createModel(context, () => TagGenericModel());
  }

  @override
  void dispose() {
    userInfoModel.dispose();
    tagGenericModel.dispose();
  }
}
