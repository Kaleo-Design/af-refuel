import '/components/user_components/user_info/user_info_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:math';
import 'dart:ui';
import 'user_list_select_widget.dart' show UserListSelectWidget;
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserListSelectModel extends FlutterFlowModel<UserListSelectWidget> {
  ///  Local state fields for this component.

  bool selected = false;

  ///  State fields for stateful widgets in this component.

  // Model for user_info component.
  late UserInfoModel userInfoModel;

  @override
  void initState(BuildContext context) {
    userInfoModel = createModel(context, () => UserInfoModel());
  }

  @override
  void dispose() {
    userInfoModel.dispose();
  }
}
